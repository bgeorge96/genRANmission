(load "grammar.lisp")

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
(defun find&pickWords (part grammar)
    (let ((wordChoices (cadar (member part grammar :key #'car))))
        (nth (random (list-length wordChoices)) wordChoices)
    )
)

;; this function does the inital part of finding the blanks
(defun fill-in-ms (MS grammar)
    (if (null MS)
        ()
        (cons (find&pickWords (car MS) grammar) (fill-in-ms (cdr MS) grammar))
    )
)

;; this is the top level that calls subfunctions to parse and change values
(defun genMSGram ()
    ;; (values grammar ms)
    (make-sentence (fill-in-ms MS grammar))
)