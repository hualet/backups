;;; 添加加载目录
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "~/.emacs.d/")
(add-subdirs-to-load-path "~/.emacs.d/HualetEmacs/Site-Lisp")

;; 加载设置
(require 'HualetInit) 
