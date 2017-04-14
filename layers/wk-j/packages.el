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
  '(
    all-the-icon
    ))

(defun wk-j/init-all-the-icon ()
  (use-package all-the-icon))

;;; packages.el ends here