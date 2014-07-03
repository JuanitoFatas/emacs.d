;;;; 02-modes.el
;;;; File extension and their modes

(defvar modes
  '((fundamental-mode . nil)
    (emacs-lisp-mode . "\\.el$")
    (lisp-mode . "\\.\\(cl\\|lisp\\)$")
    (scheme-mode . "\\.scm$")
    (clojure-mode . "\\.clj$")
    (perl-mode . "\\.\\(pl\\|t\\|psgi\\)$")
    (yaml-mode . "\\.ya?ml$")
    (js2-mode . "\\.\\(js\\|json\\)$")
    (ruby-mode . "\\.\\(rb\\|gemspec\\)$")
    (text-mode . "\\.txt$")
    (LaTeX-mode . "\\.tex$")
    (org-mode . "\\.org$")
    (css-mode . "\\.css$")
    (nxml-mode . "\\.\\(xml\\|svg\\|wsdl\\|xslt\\|wsdd\\|xsl\\|rng\\|xhtml\\|jsp\\|tag\\)$")
    (markdown-mode . "\\.\\(md\\|markdown\\)$")
    (html-mode . "\\.\\(html\\|htm\\|emb\\|tmpl\\|tt\\)$")))

(loop for (k . v) in modes
      do (unless (null v) (add-to-list 'auto-mode-alist (cons v k))))
