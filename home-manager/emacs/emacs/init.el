(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024))
      (old-file-name-handler-alist file-name-handler-alist))
  (setq gc-cons-threshold init-gc-cons-threshold
        file-name-handler-alist nil)
  (add-hook 'emacs-startup-hook
            (lambda ()
              (setq gc-cons-threshold normal-gc-cons-threshold
                    file-name-handler-alist old-file-name-handler-alist))))

;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (unless package-archive-contents
;;   (package-refresh-contents))
;; (unless (package-installed-p 'use-package)
;;   (package-install 'use-package))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(require 'init-basic)
(require 'init-ui)
(require 'init-function)
(require 'init-tools)
