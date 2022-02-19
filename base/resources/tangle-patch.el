;;; tangle-patch.el --- Patch org-babel-tangle to allow excluding with tags

;;; Commentary:
;;; Allows excluding org headings and trees from being tangled, by using the =notangle= tag.

;; Notes: so that this can work even before the first setup, it should use the default org
;; version, instead of the one that is downloaded from melpa
;;
;; Changes made:
;;   - added (tags (org-get-tags))
;;   - added (member "notangle" tags)

;;; Code:

;; loading org-element is necessary to avoid an error related to org-persist
(require 'org-element)
(require 'ob-tangle)

(defun *org-babel-tangle-collect-blocks (&optional lang-re tangle-file)
  "Like `org-babel-tangle-collect-blocks', but will ignore blocks that are in trees with the :notangle: tag."
  (let ((counter 0) last-heading-pos blocks)
    (org-babel-map-src-blocks (buffer-file-name)
      (let ((current-heading-pos
	           (org-with-wide-buffer
	            (org-with-limited-levels (outline-previous-heading)))))
	      (if (eq last-heading-pos current-heading-pos) (cl-incf counter)
	        (setq counter 1)
	        (setq last-heading-pos current-heading-pos)))
      (unless (or (org-in-commented-heading-p)
		              (org-in-archived-heading-p))
	      (let* ((tags (org-get-tags))
               (info (org-babel-get-src-block-info 'light))
	             (src-lang (nth 0 info))
	             (src-tfile (cdr (assq :tangle (nth 2 info)))))
	        (unless (or (member "notangle" tags)
                      (string= src-tfile "no")
		                  (and tangle-file (not (equal tangle-file src-tfile)))
		                  (and lang-re (not (string-match-p lang-re src-lang))))
	          ;; Add the spec for this block to blocks under its tangled
	          ;; file name.
	          (let* ((block (org-babel-tangle-single-block counter))
                   (src-tfile (cdr (assq :tangle (nth 4 block))))
		               (file-name (org-babel-effective-tangled-filename
                               (nth 1 block) src-lang src-tfile))
		               (by-fn (assoc file-name blocks)))
	            (if by-fn (setcdr by-fn (cons (cons src-lang block) (cdr by-fn)))
		            (push (cons file-name (list (cons src-lang block))) blocks)))))))
    ;; Ensure blocks are in the correct order.
    (mapcar (lambda (b) (cons (car b) (nreverse (cdr b))))
	          (nreverse blocks))))


(advice-add 'org-babel-tangle-collect-blocks :override
             #'*org-babel-tangle-collect-blocks)
