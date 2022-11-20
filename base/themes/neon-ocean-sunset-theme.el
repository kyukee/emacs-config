;;; neon-ocean-sunset-theme.el --- A deep blue color theme

;;; Commentary:

;; This theme is based on two Emacs themes, one named cyberpunk, available at
;; https://github.com/n3mo/cyberpunk-theme.el and another theme called underwater,
;; available at https://github.com/jmdeldin/underwater-theme.el.
;; The base themes were originaly created with the built-in deftheme functionality.
;; The objective of this theme is to try to combine elements from several influences:
;; cyberpunk, synthwave, outrun, and a bit of space/oceanic.
;; Essentially, it's a dark navy blue background with yellowish text and neon accents.

;;; Code:

(deftheme neon-ocean-sunset "Dark navy blue theme with neon accents.")

(let ((*background-color*   "#102235")
      (*brown*              "#E64")
      (*comments*           "#4E6F91")
      (*constant*           "#FFC287")
      (*current-line*       "#18374f")
      (*cursor-block*       "#FFFFFF")
      (*cursor-underscore*  "#FFFAAA")
      (*keywords*           "#8AC6F2")
      (*light-purple*       "#FFCCFF")
      (*line-number*        "#2F577C")
      (*method-declaration* "#AF81F4")
      (*mode-line-bg*       "#0A1721")
      (*mode-line-fg*       "#FFEC99")
      (*mode-line-inactive* "#4E6F91")
      (*normal*             "#DFEFF6")
      (*number*             "#96DEFA")
      (*operators*          "#3E71A1")
      (*parens*             "magenta")
      (*red*                "#C62626")
      (*red-light*          "#FFB6B0")
      (*regexp*             "#EF7760")
      (*regexp-alternate*   "#FF0")
      (*regexp-alternate-2* "#B18A3D")
      (*search-fg*          "#E2DAEF")
      (*search-bg*          "#AF81F4")
      (*string*             "#89E14B")
      (*type*               "#5BA0EB")
      (*variable*           "#8AC6F2")
      (*vertical-border*    "#252338")
      (*visual-selection*   "#1B2530")
      (bg_1      "#14141D")
      (bg_2      "#15151f")     ;; #13141A
      (bg_3      "#151522")     ;; #151424
      (bg_4      "#17162a")
      (red_1     "#e61c89")     ;; #ff1493
      (red_2     "#D92027")
      (green_1   "#12F292")     ;; #00fa9a, #14FF82, #40e66c
      (green_2   "#fff")
      (yellow_1  "#ffa500")
      (yellow_2  "#fff")
      (blue_1    "#add8e6")
      (blue_2    "#fff")
      (magenta_1 "#9963ff")
      (magenta_2 "#fff")
      (cyan_1    "#21D7D7")
      (cyan_2    "#fff")
      (fg_1      "#c8c9ad")     ;; #bdbdb3, #ecf0c1
      (fg_2      "#dedede")
      (cyberpunk-bg+2 "#5f5f5f")
      (cyberpunk-yellow "#ffff00")
      (cyberpunk-yellow-1 "#FBDE2D")
      (cyberpunk-green "#00ff00")
      (cyberpunk-green+4 "#bfebbf")
      (cyberpunk-red+1 "#dca3a3")
      (cyberpunk-red "#ff0000")
      (cyberpunk-red-1 "#8b0000")
      (cyberpunk-blue+1 "#94bff3")
      (cyberpunk-blue "#0000ff")
      (cyberpunk-blue-5 "#4c83ff")
      (cyberpunk-pink "#ff69b4")
      (cyberpunk-magenta "#dc8cc3")
      (cyberpunk-cyan "#93e0e3")
      (darkburn-bg+1 "#4F4F4F")
      (darkburn-bg+2 "#5F5F5F")
      (darkburn-red-2 "#AC7373")
      (darkburn-red-4 "#8C5353")
      (darkburn-green-1 "#5F7F5F")
      (darkburn-green "#7F9F7F")
      (darkburn-blue-5 "#366060")
      (darkburn-blue-3 "#5C888B"))

  (custom-theme-set-faces
   'neon-ocean-sunset

   ;; -- User Customization  --

   ;; defaults
   `(default                          ((t (:background ,bg_1 :foreground ,fg_1))))
   `(fringe                           ((t (:background ,bg_1 :foreground ,fg_2))))
   '(region                           ((t (:background "#5e153c" :extend t))))  ; #34294f, #5e153c
   `(error                            ((t (:foreground ,red_2 :weight bold))))
   '(whitespace-tab                   ((t (:background nil))))
   '(whitespace-trailing              ((t (:background nil))))
   '(lazy-highlight                   ((t (:background "#8b8b00" :foreground "white"))))
   `(isearch                          ((t (:background ,red_1 :foreground "black"))))
   '(isearch-fail                     ((t (:background "#5654ca" :foreground "white"))))
   '(match                            ((t (:background "#8b4887" :foreground "white"))))
   `(header-line                      ((t (:foreground "#7cdeeb" :background "#28283d"))))   ; #2d3352, #2a2e47, #2d2d45, #21D7D7, #7cdeeb, #fcf578, #dcd172
   `(term                             ((t (:background ,bg_3 :foreground ,fg_1))))    ;; this is mostly for the fzf prompt
   `(term-bold                        ((t (:background ,bg_3 :foreground ,fg_1 :weight bold))))
   '(highlight                        ((t (:background "#1B2530"))))
   `(hl-line                          ((t (:inherit (highlight) :extend t))))
   '(italic                           ((t (:slant italic :underline nil))))
   `(tooltip                          ((t (:background ,bg_1 :foreground ,fg_1))))

   ;; defaults - programming
   `(font-lock-keyword-face           ((t (:foreground "#21D7D7"))))
   '(font-lock-variable-name-face     ((t (:foreground "#ff1493"))))  ; #f54dce, #f461c6, #f7658d, #ff1493
   '(font-lock-string-face            ((t (:foreground "#fdca00"))))  ; #89E2A1, #CCE8D3
   '(font-lock-type-face              ((t (:foreground "#9963ff"))))
   '(font-lock-constant-face          ((t (:foreground "#96CBFE"))))
   '(font-lock-builtin-face           ((t (:foreground "#4c83ff"))))
   '(font-lock-function-name-face     ((t (:foreground "#12F292"))))
   '(font-lock-doc-face               ((t (:foreground "#fee47f"))))
   `(font-lock-warning-face           ((t (:foreground "#FF6186"))))
   `(font-lock-comment-face           ((t (:foreground "#8B8989" :inherit (italic)))))
   `(font-lock-comment-delimiter-face ((t (:foreground "#999494" :inherit (italic)))))

   ;; line numbers
   '(line-number                      ((t (:foreground "gray30"))))
   `(line-number-current-line         ((t (:background ,bg_1 :foreground ,fg_2))))

   ;; show-paren
   `(show-paren-mismatch              ((t (:foreground "#9c6363" :background ,bg_1))))
   `(show-paren-match                 ((t (:foreground ,bg_1 :background "#ff1493"))))

   ;; tab-line
   `(tab-line                         ((t (:background ,bg_1 :foreground "white" :height 1.0))))
   `(tab-line-tab                     ((t (:inherit tab-line :background ,bg_1 :foreground ,fg_2))))               ; selected but window not in focus
   `(tab-line-tab-current             ((t (:inherit tab-line-tab :overline ,green_1))))                            ; selected
   '(tab-line-tab-inactive            ((t (:inherit tab-line-tab :foreground "gray40"))))                          ; not selected
   `(tab-line-highlight               ((t (:inherit tab-line-tab :background ,yellow_1 :foreground "#222222"))))   ; on mouse-over

   ;; compilation (some of this is also used by rg-mode)
   `(compilation-column-face          ((t (:foreground ,cyberpunk-yellow))))
   `(compilation-enter-directory-face ((t (:foreground ,cyberpunk-green))))
   `(compilation-error-face           ((t (:foreground ,cyberpunk-red-1 :weight bold :underline t))))
   `(compilation-face                 ((t (:foreground ,fg_1))))
   `(compilation-info-face            ((t (:foreground ,cyberpunk-blue))))
   `(compilation-info                 ((t (:foreground ,cyberpunk-green+4 :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,cyberpunk-green))))
   `(compilation-line-face            ((t (:foreground ,cyberpunk-yellow))))
   `(compilation-line-number          ((t (:foreground ,cyberpunk-yellow))))
   `(compilation-message-face         ((t (:foreground ,cyberpunk-blue))))
   `(compilation-warning-face         ((t (:foreground ,cyberpunk-yellow-1 :weight bold :underline t))))

   ;; eshell
   `(eshell-prompt                    ((t (:foreground ,cyberpunk-blue-5 :weight bold))))
   `(eshell-ls-archive                ((t (:foreground ,cyberpunk-magenta :weight bold))))
   `(eshell-ls-backup                 ((t (:inherit font-lock-comment))))
   `(eshell-ls-clutter                ((t (:inherit font-lock-comment))))
   `(eshell-ls-directory              ((t (:foreground ,cyberpunk-blue+1 :weight bold))))
   `(eshell-ls-executable             ((t (:foreground ,cyberpunk-red+1 :weight bold))))
   `(eshell-ls-unreadable             ((t (:foreground ,fg_1))))
   `(eshell-ls-missing                ((t (:inherit font-lock-warning))))
   `(eshell-ls-product                ((t (:inherit font-lock-doc))))
   `(eshell-ls-special                ((t (:foreground ,cyberpunk-yellow :weight bold))))
   `(eshell-ls-symlink                ((t (:foreground ,cyberpunk-cyan :weight bold))))

   ;; diff
   `(magit-section-heading            ((t (:foreground ,green_1 :weight bold))))     ; #94bff3, "#efd517"
   `(diff-added                       ((t (:inherit magit-diffstat-added))))
   `(diff-changed                     ((t (:foreground ,cyberpunk-yellow))))
   `(diff-removed                     ((t (:inherit magit-diffstat-removed))))
   `(diff-refine-added                ((t (:inherit magit-diff-added))))
   `(diff-refine-changed              ((t (:inherit magit-diff-base))))
   `(diff-refine-removed              ((t (:inherit magit-diff-removed))))
   `(diff-header                      ((t (:background ,cyberpunk-bg+2))))
   `(diff-file-header                 ((t (:inherit magit-header-line))))

   ;; ediff
   `(ediff-current-diff-A             ((t (:foreground ,fg_1 :background ,darkburn-red-4))))
   `(ediff-current-diff-Ancestor      ((t (:foreground ,fg_1 :background ,darkburn-red-4))))
   `(ediff-current-diff-B             ((t (:foreground ,fg_1 :background ,darkburn-green-1))))
   `(ediff-current-diff-C             ((t (:foreground ,fg_1 :background ,darkburn-blue-5))))
   `(ediff-even-diff-A                ((t (:background ,darkburn-bg+1))))
   `(ediff-even-diff-Ancestor         ((t (:background ,darkburn-bg+1))))
   `(ediff-even-diff-B                ((t (:background ,darkburn-bg+1))))
   `(ediff-even-diff-C                ((t (:background ,darkburn-bg+1))))
   `(ediff-fine-diff-A                ((t (:foreground ,fg_1 :background ,darkburn-red-2 :weight bold))))
   `(ediff-fine-diff-Ancestor         ((t (:foreground ,fg_1 :background ,darkburn-red-2 weight bold))))
   `(ediff-fine-diff-B                ((t (:foreground ,fg_1 :background ,darkburn-green :weight bold))))
   `(ediff-fine-diff-C                ((t (:foreground ,fg_1 :background ,darkburn-blue-3 :weight bold ))))
   `(ediff-odd-diff-A                 ((t (:background ,darkburn-bg+2))))
   `(ediff-odd-diff-Ancestor          ((t (:background ,darkburn-bg+2))))
   `(ediff-odd-diff-B                 ((t (:background ,darkburn-bg+2))))
   `(ediff-odd-diff-C                 ((t (:background ,darkburn-bg+2))))

   ;; default modeline
   '(mode-line                        ((t (:background "#251F33" :foreground "gray60" :box (:line-width -1 :color "#14141D")))))
   '(mode-line-inactive               ((t (:background "#221d2b" :foreground "gray40" :box (:line-width -1 :color "#14141D")))))
   ;; '(mode-line-highlight              ((t (:box (:line-width 2 :color "gray70")))))
   `(mode-line-highlight              ((t (:foreground ,green_1 :weight bold))))
   '(mode-line-buffer-id              ((t (:foreground "gray70"))))
   `(mode-line-emphasis               ((t (:foreground ,green_1 :weight bold))))

   ;; doom-modeline
   '(doom-modeline-bar                ((t (:background "#251F33"))))
   '(doom-modeline-bar-inactive       ((t (:background "#221d2b"))))
   '(doom-modeline-persp-buffer-not-in-persp ((t (:inherit (font-lock-comment-face italic)))))
   '(doom-modeline-persp-name         ((t (:inherit (font-lock-doc-face italic bold)))))
   `(doom-modeline-project-dir        ((t (:foreground ,green_1 :weight bold))))
   '(doom-modeline-buffer-path        ((t (:foreground "gray60" :weight bold))))
   '(doom-modeline-info               ((t (:foreground "gray60" ))))

   ;; ivy
   `(minibuffer-prompt                ((t (:background ,bg_2 :foreground ,green_1))))
   '(ivy-current-match                ((t (:box nil :weight extra-bold :background "#1D1A37"))))
   '(ivy-minibuffer-match-face-1      ((t (:background "gray27"))))
   '(ivy-minibuffer-match-face-2      ((t (:background "gray40" :weight bold))))
   '(ivy-minibuffer-match-face-3      ((t (:background "#5654ca" :weight bold))))
   '(ivy-minibuffer-match-face-4      ((t (:background "#8b4887" :weight bold))))
   `(ivy-posframe                     ((t (:background ,bg_2))))
   '(ivy-posframe-border              ((t (:background "#A13878"))))

   ;; hydra-posframe
   `(hydra-posframe-face              ((t (:background ,bg_2))))
   '(hydra-posframe-border-face       ((t (:background "#A13878"))))

   ;; flyspell
   `(flyspell-incorrect               ((t (:underline (:style wave :color "DarkOrange")))))    ; red_2
   '(flyspell-duplicate               ((t (:underline (:style wave :color "DarkOrange")))))

   ;; flymake
   `(flymake-errline                  ((t (:underline (:style wave :color ,red_2)))))

   ;; org mode
   `(org-todo                         ((t (:foreground ,yellow_1 :box (:line-width 1 :style none) :weight bold))))
   '(org-done                         ((t (:foreground "#00ff00" :box (:line-width 1 :style none) :weight bold))))
   `(org-checkbox-statistics-todo     ((t (:foreground ,yellow_1))))
   '(org-checkbox-statistics-done     ((t (:foreground "#00ff00"))))
   `(org-block                        ((t (:background ,bg_3))))
   `(org-block-begin-line             ((t (:background ,bg_4 :foreground "gray35" :extend t))))
   `(org-block-end-line               ((t (:background ,bg_4 :foreground "gray35" :extend t))))
   `(org-ellipsis                     ((t (:foreground ,fg_2))))
   `(outline-1                        ((t (:foreground ,red_1))))
   '(outline-2                        ((t (:foreground "#efd517"))))
   '(outline-3                        ((t (:foreground "#A840F4"))))
   '(outline-4                        ((t (:foreground "#379ff0"))))
   `(org-level-1                      ((t (:inherit (outline-1) :height 1.15))))
   '(org-level-2                      ((t (:inherit (outline-2) :height 1.1))))
   '(org-level-3                      ((t (:inherit (outline-3) :height 1.05))))
   '(org-level-4                      ((t (:inherit (outline-4)))))
   `(org-checkbox                     ((t (:background ,bg_1 :foreground ,red_1))))
   `(org-document-title               ((t (:background ,bg_1 :foreground ,blue_1 :weight bold :height 1.6))))
   `(org-document-info                ((t (:foreground ,blue_1 :weight bold))))
   '(org-document-info-keyword        ((t (:foreground "gray55"))))
   `(org-verbatim                     ((t (:background ,bg_4 :inherit (fixed-pitch shadow)))))
   `(org-code                         ((t (:background ,bg_4 :inherit (fixed-pitch shadow)))))
   '(org-headline-done                ((((class color) (min-colors 16) (background dark)) (:foreground "gray40"))))
   ;; '(org-superstar-header-bullet      ((t (:height 1.4 :foreground ,cyan_1)))) ;; change face of bullets for all headers
   `(org-agenda-date-today            ((t (:foreground "#efd517" :slant italic :weight bold))) t)
   `(org-agenda-structure             ((t (:inherit font-lock-comment-face))))

   ;; dashboard
   '(dashboard-banner-logo-title      ((t (:foreground "#A840F4" :height 1.0))))

   ;; diff-hl
   '(diff-hl-insert                   ((t (:background "#008b00" :foreground "#008b00"))))
   '(diff-hl-change                   ((t (:background "#8b8b00" :foreground "#8b8b00"))))
   '(diff-hl-delete                   ((t (:background "#8b0000" :foreground "#8b0000"))))

   ;; anzu
   ;; '(anzu-replace-highlight           ((t (:foreground "red"))))
   ;; '(anzu-replace-to                  ((t (:foreground "green"))))

   ;; visual replace
   '(vr/match-0                       ((t (:background "#5654ca" :foreground "white"))))
   '(vr/match-1                       ((t (:background "#8b4887" :foreground "white"))))

   ;; company
   `(company-tooltip                  ((t (:background ,bg_4))))
   `(company-tooltip-selection        ((t (:background "#405a72"))))
   `(company-tooltip-scrollbar-thumb  ((t (:background "#3a5166"))))
   `(company-tooltip-annotation       ((t (:foreground "#a3a374"))))

   ;; yascroll
   `(yascroll:thumb-text-area         ((t (:background "#454259"))))
   `(yascroll:thumb-fringe            ((t (:background "#454259" :foreground "#454259"))))

   ;; latex-mode
   `(font-latex-warning-face          ((t (:inherit font-lock-warning-face))))
   `(font-latex-sectioning-5-face     ((t (:foreground "#efd517" :weight bold))))

   ;; -- Underwater theme --

   `(bold ((t (:bold t))))
   `(button ((t (:foreground, *keywords* :underline t))))
   `(default ((t (:background, *background-color* :foreground, *normal*))))
   `(header-line ((t (:background, *mode-line-bg* :foreground, *normal*)))) ;; info header
   `(highlight ((t (:background, *current-line*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(hl-line ((t (:background, *current-line* :underline t))))
   `(info-xref ((t (:foreground, *keywords* :underline t))))
   `(region ((t (:background, *visual-selection*))))
   `(underline ((nil (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *operators*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*))))
   `(font-lock-constant-face ((t (:foreground, *constant*))))
   `(font-lock-doc-face ((t (:foreground, *string*))))
   `(font-lock-doc-string-face ((t (:foreground, *string*))))
   `(font-lock-function-name-face ((t (:foreground, *method-declaration*))))
   `(font-lock-keyword-face ((t (:foreground, *keywords*))))
   `(font-lock-negation-char-face ((t (:foreground, *red*))))
   `(font-lock-preprocessor-face ((t (:foreground, *keywords*))))
   `(font-lock-reference-face ((t (:foreground, *constant*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *regexp*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *regexp*))))
   `(font-lock-string-face ((t (:italic t :foreground, *string*))))
   `(font-lock-type-face ((t (:foreground, *type*))))
   `(font-lock-variable-name-face ((t (:foreground, *variable*))))
   `(font-lock-warning-face ((t (:foreground, *red*))))

   ;; GUI
   `(fringe ((t (:background, *background-color*))))
   `(linum ((t (:background, *line-number*))))
   `(minibuffer-prompt ((t (:foreground, *variable*))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-line-bg* :foreground, *mode-line-inactive*))))
   `(text-cursor ((t (:background, *cursor-underscore*))))
   `(vertical-border ((t (:foreground, *vertical-border*)))) ;; between splits

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *red* :foreground, *normal* :weight bold))))
   `(show-paren-match ((t (:background, *background-color* :foreground, *parens* :weight bold))))

   ;; search
   `(isearch ((t (:background, *search-bg* :foreground, *search-fg*))))
   `(isearch-fail ((t (:background, *red*))))
   `(lazy-highlight ((t (:background, *operators* :foreground, *search-fg*))))

   ;; erb/rhtml-mode
   `(erb-out-delim-face ((t (:foreground, *regexp*))))

   ;; magit
   `(magit-diff-add ((t (:foreground, *string*))))
   `(magit-diff-del ((t (:foreground, *red*))))

   ;; enh-ruby-mode
   `(enh-ruby-op-face ((t (:foreground, *operators*))))
   `(enh-ruby-regexp-delimiter-face ((t (:foreground, *regexp*))))
   `(enh-ruby-string-delimiter-face ((t (:foreground, *normal*))))

   ;; org-mode
   `(org-date ((t (:foreground, *light-purple* :underline t))))
   `(org-level-1 ((t (:foreground, *string*))))
   `(org-special-keyword ((t (:foreground, *variable*))))
   `(org-link ((t (:foreground, *keywords* :underline t))))
   `(org-checkbox ((t (:foreground, *keywords* :background, *background-color* :bold t))))
   `(org-clock-overlay ((t (:foreground, *mode-line-bg* :background, *string*))))

   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; Local Variables:
;; no-byte-compile: t
;; End:

(provide-theme 'neon-ocean-sunset)
;;; neon-ocean-sunset-theme.el ends here
