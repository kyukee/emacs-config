;;; init.el --- Emacs Init File          -*- lexical-binding: t -*-

;;; Commentary:
;; GNU Emacs Configuration - Initialization File

;;; Code:

(defvar *config-file* (expand-file-name "README.org" user-emacs-directory)
    "The configuration file.")

;; If config.el exists then load it, otherwise tangle README.org
(if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
    (load-file (expand-file-name "config.el" user-emacs-directory))
  (org-babel-load-file *config-file*))

;;; init.el ends here
