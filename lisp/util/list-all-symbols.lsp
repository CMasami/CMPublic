;;;
;;; list-all-symbols.lsp
;;;
;;; atoms-family sample
;;;

(defun list-all-symbols ( / file fd ls )
  (setq file (getstring T "filename: "))
  (setq fd (open file "w"))
  (foreach it (atoms-family 0)
    (princ it fd) (princ "\n" fd)
  )
  (close fd)
  (terpri)
)