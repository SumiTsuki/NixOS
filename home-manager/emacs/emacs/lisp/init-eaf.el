(use-package eaf
  :straight (eaf
			 :type git
			 :host github
			 :repo "emacs-eaf/emacs-application-framework"
			 :files("*.el" "*.py" "core" "app" "screenshot"))
  :custom
  (eaf-python-command "python3")
  (eaf-config-location (expand-file-name "eaf/" user-emacs-directory))
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url browser-function 'eaf-open-browser)
  :config
  (defalias 'browse-web #'eaf-open-browser)
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  (eaf-bind-key nil "M-q" eaf-browser-keybinding)
  (require 'eaf-browser)
  (require 'eaf-pdf-viewer))

(provide 'init-eaf)
