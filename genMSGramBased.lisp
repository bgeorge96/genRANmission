(defun formatString (words n )
    (cond
        ((null words) '("."))
        ((= (list-length words) 1) (append (list (car words)) (formatString (cdr words) (+ n 1))))
        ((= n 0) (append (list (string-capitalize (car words))) '(" ") (formatString (cdr words) (+ n 1))))
        (t (append (list (car words)) '(" ")  (formatString (cdr words) (+ n 1))) ) 
    )
)

;; This will concatenate the words into a sentence and call formating functions
(defun make-sentence (words)
    (apply #'concatenate 'string (formatString words 0))
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