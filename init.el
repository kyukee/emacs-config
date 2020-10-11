;;; init.el --- GNU Emacs Configuration

;; If config.el exists then load it, otherwise tangle config.org
;; After the first time that config.el is created, this will no longer tangle the config file.
;; You can update it by saving the config.org file inside emacs.
;; This is slightly faster than just using org-babel-load-file

;; The first time config.el is generated, emacs will not have the early-init.el file.
;; This will make startup slower and there will be some GUI settings that are not set correctly.
;; On runs after the first one, everthing should run smoothly

;; (if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
;;     (load-file (expand-file-name "config.el" user-emacs-directory))
;;   (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

















;; temporary (otherwise need to delete files to recover from error)
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
