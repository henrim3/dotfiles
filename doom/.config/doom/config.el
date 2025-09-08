;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-palenight)
(setq doom-theme 'doom-monokai-classic)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; font stuff
(setq doom-font (font-spec :family "Hurmit Nerd Font Mono" :size 26)
      doom-big-font (font-spec :family "Hurmit Nerd Font Mono" :size 40))

;; line wrapping
(global-visual-line-mode t)

(map! :leader
      :desc "Open dired" "p v" #'dired-jump)

(map! :leader
      :desc "Format buffer" "f o" #'lsp-format-buffer)

;; hover stuff
(map! :leader
      :desc "Describe thing at point" "k" #'lsp-describe-thing-at-point)

(map! :n "K" #'lsp-ui-doc-glance)

;; vim keys for windows
(map! :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right)

(map! :map magit-diff-mode-map
      :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right)

(map! :n "C-M-=" #'evil-window-increase-width
      :n "C-M--" #'evil-window-decrease-width)

(map! :n "C-M-h"  #'+workspace/switch-left
      :n "C-M-l" #'+workspace/switch-right)

(map! :leader
      :desc "Search project (regexp)"
      "SPC" #'+default/search-project)

(map! :leader
      :desc "Open multi vterm"
      "m t" #'multi-vterm)

(map! :leader
      :desc "Rename multi vterm buffer"
      "m r" #'multi-vterm-rename-buffer)

;; set shell to zsh
(setq vterm-shell "/run/current-system/sw/bin/zsh")

(setq +workspaces-auto-save t)

;; open dired when select project
(setq projectile-switch-project-action
      (lambda ()
        (dired (projectile-project-root))
        (delete-other-windows)))

(after! lsp-mode
  (setq lsp-signature-auto-activate nil
        lsp-eldoc-enable-hover nil
        lsp-signature-render-documentation nil))

;; Show only file name, not the full path
(setq doom-modeline-buffer-file-name-style 'buffer-name)

(global-set-key (kbd "M-<backspace>") 'backward-kill-word)

;; Disable automatic indentation
(electric-indent-mode -1)

(require 'multi-vterm)
(require 'rainbow-delimiters)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

;; make clipboard work like vim
;; (setq select-enable-clipboard nil
;;       select-enable-primary nil)

(after! company
  ;; Use TAB for completion instead of RET
  (define-key company-active-map (kbd "TAB") #'company-complete-selection)
  (define-key company-active-map (kbd "<tab>") #'company-complete-selection)

  ;; Make sure RET just inserts a newline
  (define-key company-active-map (kbd "RET") nil)
  (define-key company-active-map (kbd "<return>") nil))

;; vim s key
(after! evil-snipe
  (evil-snipe-mode -1))
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
