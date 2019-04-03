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
        (N ("boy" "girl"))
        (V ("run" "jump"))
    )
)
```
The code above is used for the terminal statements for what the mission statements could end up saying.

<!-- The mission of Taylor University is to develop servant leaders marked with a passion to minister Christ's redemptive love and truth to a world in need. -->
<!-- The mission of Baylor University is to educate men and women for worldwide leadership and service by integrating academic excellence and Christian commitment within a caring community. -->
<!-- Speedway's mission is to be the customers' first choice for value and convenience. -->
<!-- Deliver exceptional Asian dining experiences by building an organization where people are inspired to better their lives. -->
