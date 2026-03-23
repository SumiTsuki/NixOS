(use-package eaf
  :straight (eaf
			 :type git
			 :host github
			 :repo "emacs-eaf/emacs-application-framework"
			 :submodules t
			 :build nil)
  :custom
  (eaf-python-command "python3")
  (eaf-config-location (expand-file-name "eaf/" user-emacs-directory))
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url-browser-function 'eaf-open-browser)
  :init
  (let ((repo-path (expand-file-name "straight/repos/emacs-application-framework" user-emacs-directory)))
    (add-to-list 'load-path repo-path)
    (add-to-list 'load-path (expand-file-name "app/browser" repo-path))
    (add-to-list 'load-path (expand-file-name "app/pdf-viewer" repo-path)))
  :config
  (require 'eaf-browser)
  (require 'eaf-pdf-viewer)
  (defalias 'browse-web #'eaf-open-browser)
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  (eaf-bind-key nil "M-q" eaf-browser-keybinding))

(provide 'init-eaf)
