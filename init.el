;;; init.el --- Emacs Init File          -*- lexical-binding: t -*-

;;; Commentary:
;; GNU Emacs Configuration - Initialization File

;;; Code:

(defvar *config-file* (expand-file-name "README.org" user-emacs-directory)
  "The configuration file.")

(defvar *config-file-tangled* (expand-file-name "config.el" user-emacs-directory)
  "The configuration file, after being tangled.")

(load-file (expand-file-name "resources/tangle-patch.el" user-emacs-directory))

;; If tangled elisp exists then load it, otherwise tangle the Org file and load it
(if (file-exists-p *config-file-tangled*)
    (load-file *config-file-tangled*)
  (org-babel-load-file *config-file*))

;;; init.el ends here
