(load "grammar.lisp")

;; Will add spacing between the strings and period at end
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
(defun pickWords (choices grammar)
    (nth (random (list-length choices)) choices)
)

;; this function does the inital part of finding terminal entries
;; and construct chosen words
(defun fill-in-ms (MS grammar)
    (if (Null MS)
        ()
        (let ((choices (cadar (member (car ms) grammar :key #'car))))
            (if (equal (car choices) 'end)
                (cons (pickWords (cdr choices) grammar) (fill-in-ms (cdr ms) grammar))
                (append (fill-in-ms choices grammar) (fill-in-ms (cdr ms) grammar))
            )
        )
    )
)

;; this is the top level that calls subfunctions to parse and change values
(defun genMSGram ()
    (make-sentence (fill-in-ms MS grammar))
)