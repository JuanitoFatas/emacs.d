;;;; 00-init.el
;;;; General initialization settings

;;;; Font
(progn
    (set-default-font "HiraMaruProN-W4-18")
    (setq default-frame-alist
      '((top . 10) (left . 2)
        (width . 100) (height . 63)
        (font . "HiraMaruProN-W4-18"))))

;; Use UTF-8
(prefer-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8-unix)

;; Tab: 2 Spaces
(setq-default tab-width 2
              indent-tabs-mode nil)

;; "yes or no" => "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; Less GC
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;; No annoying sound
(setq ring-bell-function 'ignore)

;; No backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq eol-mnemonic-dos "(CRLF)"
      eol-mnemonic-mac "(CR)"
      eol-mnemonic-unix "(LF)")

