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

(use-package company :ensure t)
(use-package helm :ensure t)
(use-package impatient-mode :ensure t)
(use-package yasnippet :ensure t)

;; top-level packages config
(add-hook 'after-init-hook 'global-company-mode) ;; after-init, globally enable company mode
;; helm
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
;; configure company mode and yasnippet (for completion)

(add-hook 'eglot-managed-mode-hook (lambda ()

(add-to-list 'company-backends

'(company-capf :with company-yasnippet))))


;; set default eglot lsp servers
(require 'eglot)
(add-to-list 'eglot-server-programs
  `((python-ts-mode python-mode) . ("pyrefly" "lsp")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
