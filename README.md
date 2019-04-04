# genRANmission
This is a *random* mission statement generator. We are attempting from two different approaches: grammar based and template based

## Running program
Open up lisp interpretor and to run the grammar based mission statement generator  

run the following command:
``` lisp
(load "genMSGramBased.lisp")
(genMSGram)
```

## Grammar.lisp

The following lines are used to format the layout of the Mission Statement:
``` lisp
 (defparameter MS ;; ms is the format of the mission statement
    '(N V N) ;; mappings to terminal mappings
)
```
The grammar that is expected is the following:
``` lisp
(defparameter grammar
    '(
        (N (END "boy" "girl"))
        (V (END "run" "jump"))
    )
)
```
The code above is used for the terminal statements for what the mission statements could end up saying.

