;configured for version 30.1

					; add melpa repo
(require 'package)
(add-to-list 'package-archives
	     '("MELPA" .
	       "http://melpa.org/packages/"))
(package-initialize)

(menu-bar-mode 0)  ; disable menu bar (1 to enable)
(tool-bar-mode 0)  ; disable tool bar (1 to enable)



(auto-save-visited-mode)  ; automaticaly safe file

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(company dracula-theme gleam-ts-mode helm zig-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; helm config 
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x) ; use helm's M-x


;; company mode config
(add-hook 'after-init-hook 'global-company-mode)


;; theme
(load-theme 'modus-vivendi-tinted)
