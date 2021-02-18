;;; init.el --- Emacs Init File          -*- lexical-binding: t -*-

;;; Commentary:
;; GNU Emacs Configuration - Initialization File

;;; Code:

;; If config.el exists then load it, otherwise tangle config.org
(if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
    (load-file (expand-file-name "config.el" user-emacs-directory))
  (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

;;; init.el ends here
