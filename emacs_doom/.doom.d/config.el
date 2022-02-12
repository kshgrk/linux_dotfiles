;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "FantasqueSansMono Nerd Font" :size 19 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "sans" :size 19))

;; (setq doom-font (font-spec :family "FantasqueSansMono Nerd Font" :size 16))
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;;      doom-variable-pitch-font (font-spec :family "Noto Serif" :size 13)
;;      ivy-posframe-font (font-spec :family "JetBrainsMono" :size 15))
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; (set-frame-parameter (selected-frame) 'alpha '(60 . 100))
;; (add-to-list 'default-frame-alist '(alpha . (60 . 100)))
(setq transparency_level 0)
(defun my:change_transparency ()
  "Toggles transparency of Emacs between 3 settings (none, mild, moderate)."
  (interactive)
  (if (equal transparency_level 0)
      (progn (set-frame-parameter (selected-frame) 'alpha '(75 . 85))
         (setq transparency_level 1))
    (if (equal transparency_level 1)
    (progn (set-frame-parameter (selected-frame) 'alpha '(50 . 85))
           (setq transparency_level 2))
      (if (equal transparency_level 2)
      (progn (set-frame-parameter (selected-frame) 'alpha '(100 . 85))
         (setq transparency_level 0)))
      )))
(define-key global-map (kbd "C-c t") 'my:change_transparency)

;; (defun doom-snippets-c++-using-std-p ()
;;   "Return non-nil if 'using namespace std' is found at the top of this file."
;;   (save-excursion
;;     (goto-char (point-max))
;;     (or (search-forward "using namespace std;" 512 t)
;;         (search-forward "std::" 1024 t))))

;; (defun doom-snippets-c++-class-name (str)
;;   "Search for a class name like `DerivedClass' in STR
;; (which may look like `DerivedClass : ParentClass1, ParentClass2, ...')
;; If found, the class name is returned, otherwise STR is returned"
;;   (yas-substr str "[^: ]*"))

;; (defun doom-snippets-c++-class-method-decl-choice ()
;;   "Choose and return the end of a C++11 class method declaration"
;;   (yas-choose-value '(";" " = default;" " = delete;")))
