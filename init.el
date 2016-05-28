(require 'package)

;; Don't forget to run the following first  to avoid pacakge not found errors
;; M-x package-refresh-contents [RET]

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(defvar my-packages '(better-defaults))

(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
