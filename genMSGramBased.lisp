(defun make-sentence (words)
    (concatenate 'string (car words) (cadar words))
    ;; (if (null words)
    ;;     "."
    ;;     (if (= (list-length words) 1)
    ;;         (concatenate 'string (car words) (cdr words))
    ;;         (concatenate 'string (car words) " " (cdr words))
    ;;     )
    ;; )
)

;; this function takes care of finding and picking from word list by type of word 
(defun find&pickWords (part grammer)
    (let ((wordChoices (cadar (member part grammer :key #'car))))
        (nth (random (list-length wordChoices)) wordChoices)
    )
)

;; this function does the inital part of finding the blanks
(defun fill-in-ms (MS grammer)
    (if (null MS)
        ()
        (cons (find&pickWords (car MS) grammer) (fill-in-ms (cdr MS) grammer))
    )
)

;; this is the top level that calls subfunctions to parse and change values
(defun genMSGram ()
    (load "grammer.lisp")
    ;; (values grammer ms)
    (make-sentence (fill-in-ms MS grammer))
)