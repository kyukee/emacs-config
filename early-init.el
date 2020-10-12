;;; early-init.el --- -*- lexical-binding: t -*-

;; A common optimization is to temporarily reduce the frequency of garbage collection during initialization.
(setq gc-cons-threshold most-positive-fixnum)

;; FileNameHandler
(defvar file-name-handler-alist-original file-name-handler-alist)
(setq file-name-handler-alist nil)

;; Restore values after startup
(add-hook 'after-init-hook
  (lambda ()
    (setq gc-cons-threshold (* 16 8 1024 1024) ; 16MB
    file-name-handler-alist file-name-handler-alist-original)))

;; Initialise installed packages
(setq package-enable-at-startup t)

;; Allow loading from the package cache.
(setq package-quickstart t)
(setq package-quickstart-file (expand-file-name "var/package-quickstart.el" user-emacs-directory))

;; Prevent unwanted runtime builds; packages are compiled ahead-of-time when
;; they are installed and site files are compiled when gccemacs is installed.
(setq comp-deferred-compilation nil)

;; Only show cursor in the active window.
(setq-default cursor-in-non-selected-windows nil)

;;Default frame position
(setq default-frame-alist
  `((height . 60) (width . 100)))

;; Prevent the glimpse of un-styled Emacs by disabling these UI elements early.
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; show column number alongside line number
(column-number-mode t)

;; display relative line numbers
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'visual)

;; highlight current line
(global-hl-line-mode +1)

;; avoid flashing the default emcas modeline while starting
(setq mode-line-format nil)

;; Do not resize the frame at this early stage.
(setq frame-inhibit-implied-resize t)
