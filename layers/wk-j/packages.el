;;; packages.el --- wk-j layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: wk <wk@wks-MacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `wk-j-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `wk-j/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `wk-j/pre-init-PACKAGE' and/or
;;   `wk-j/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst wk-j-packages
  '(all-the-icons
    request
    paredit
    parinfer
    (litable :location (recipe
                        :fetcher github
                        :repo "fuco1/litable"))
    ;;(cake-mode :location (recipe
    ;;                      :fetcher github
    ;;                      :repo "wk-j/cake-mode")))) 
    ))

(defun wk-j/init-litable ()
  (use-package litable))

(defun wk-j/init-request()
  (use-package request))

(defun wk-j/init-all-the-icons ()
  (use-package all-the-icons))

(defun wk-j/init-cake-mode ()
  (use-package cake-mode))

;; Parinfer
(defun wk-j/init-parinfer ()
  (use-package parinfer
    :ensure t
    :bind
    (("C-," . parinfer-toggle-mode))
    :init
    (progn
      (setq parinfer-extensions
            '(defaults       ; should be included.
               pretty-parens  ; different paren styles for different modes.
               evil           ; If you use Evil.
               lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
               paredit        ; Introduce some paredit commands.
               smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
               smart-yank))   ; Yank behavior depend on mode.
      (add-hook 'clojure-mode-hook #'parinfer-mode)
      (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
      (add-hook 'common-lisp-mode-hook #'parinfer-mode)
      (add-hook 'scheme-mode-hook #'parinfer-mode)
      (add-hook 'racket-mode-hook #'parinfer-mode)
      (add-hook 'lisp-mode-hook #'parinfer-mode))))

;; packages.el ends here
