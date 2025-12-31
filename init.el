(menu-bar-mode 0)  ; disable menu bar (1 to enable)
(tool-bar-mode 0)  ; disable tool bar (1 to enable)



; set auto-save to use temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
      
