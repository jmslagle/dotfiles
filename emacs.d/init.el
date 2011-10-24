(setq default-tab-width 3)

(if (boundp 'running-xemacs)
		(setq my-emacs-dir (expand-file-name "~/.emacs.d/"))
	(setq my-emacs-dir "~/.emacs.d/")
)

(setq load-path (cons my-emacs-dir load-path))

(require 'font-lock)

(global-font-lock-mode t)

(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")

(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

