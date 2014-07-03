;;;; 01-keybindings.el
;;;; key bindings

;; Font size ++
(defun font-big ()
 (interactive)
 (set-face-attribute 'default nil :height
  (+ (face-attribute 'default :height) 10))
 (set-font))

;; Font size --
(defun font-small ()
 (interactive)
 (set-face-attribute 'default nil :height
  (- (face-attribute 'default :height) 10))
 (set-font))

(defvar my-key-bindings
  `((,(kbd "C--") . font-small)
    (,(kbd "C-+") . font-big)))

(defun define-keys (&optional mode)
  (loop for (key . fn) in my-key-bindings
        do (if mode
               (define-key mode key fn)
               (global-set-key key fn))))

(define-keys)
