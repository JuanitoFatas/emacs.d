(setq load-path
      (append
       (list
         (expand-file-name "~/.emacs.d")
         (expand-file-name "~/.emacs.d/elisp")
         (expand-file-name "~/.emacs.d/slime"))
       load-path))

;; init-loader.el
(require 'init-loader)

(setq init-loader-show-log-after-init nil)

(defun init-loader-re-load (re dir &optional sort)
  (let ((load-path (cons dir load-path)))
    (dolist (el (init-loader--re-load-files re dir sort))
      (condition-case e
          (let ((time (car (benchmark-run (load (file-name-sans-extension el))))))
            (init-loader-log (format "loaded %s. %s" (locate-library el) time)))
        (error
         (init-loader-error-log (format "%s. %s" (locate-library el) (error-message-string e)))
         )))))

(init-loader-load
 (expand-file-name "inits/" (file-name-directory load-file-name)))
