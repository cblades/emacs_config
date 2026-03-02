;; -*- lexical-binding: t -*-
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(menu-bar-mode 0)
(tool-bar-mode 0)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages '(company eglot helm impatient-mode typescript-mode yasnippet)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;; )

(use-package company :ensure t)  ;; completion in-window
(use-package helm :ensure t)  ;; completion for emacs commands and contexts 
;; (use-package impatient-mode :ensure t)  ;; live hot reloading for html
(use-package yasnippet :ensure t)  ;; snippet engine used iwht company for code completion
(use-package catppuccin-theme :ensure t)  ;; theme


;; top-level packages config

;; company
(add-hook 'after-init-hook 'global-company-mode) ;; after-init, globally enable company mode

;; helm
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

;; eglot
(add-hook 'eglot-managed-mode-hook (lambda ()

(add-to-list 'company-backends

'(company-capf :with company-yasnippet))))


;; set default eglot lsp servers
(require 'eglot)
(add-to-list 'eglot-server-programs
  `((python-ts-mode python-mode) . ("pyrefly" "lsp")))


;; theme
(load-theme 'catppuccin :no-confirm)
(setq catppuccin-flavor 'frappe) ;; theme variant

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
 '(auto-save-file-name-transforms
   '((".*" "~/.emacs.d/autosaves/" t)))
 '(backup-directory-alist
   '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave and backups dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)
