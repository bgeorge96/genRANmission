# genRANmission
This is a *random* mission statement generator. We are attempting from two different approaches: grammar based and template based

## Running program
Open up lisp interpretor and to run the grammar based mission statement generator  

run the following command:
``` lisp
(load "allTogether.lisp")
(genMSGram) ;; to run the grammar based generator
(make) ;; to run the template based generator
```

# Grammar Based Approach
The first attempt that my partner and I wanted to try was to make a grammar based approach  
to generating a random mission statement. The two files that are important 

## `grammar.lisp`

The following lines are used to format the layout of the Mission Statement:
``` lisp
 (defparameter MS ;; ms is the format of the mission statement
    '(IN N VP SP) ;; setting up the structure of the sentence
)
```
### *Important*
_The terminal mappings need to begin with the symbol `END` to show it is the deepest mapping there could be._  
  
The grammar that is expected is the following:
``` lisp
(defparameter grammar
    '(
        (SP (ADJ PN)) 
        (IN (DET INN PREP))
        (VP (HV V PREP))
        (DET (END "the" "an" "a" "this" "that"))
        (ADJ (END "beautiful" "wonderful" "awesome" "amazing" "unbelievable"))
        (PREP (END "of" "at" "for" "with" "from"))
        (HV (END "is" "was" "will" "be" "shall"))
        (INN (END "mission" "objective" "plan" "idea" "hope"))
        (N (END "Taylor University" "Baylor University" "Dayton Unversity" "Speedway" "Marathon"))
        (PN (END "students" "adults" "collegues" "youth" "elders"))
        (V (END "invite" "inspire" "engage" "walk" "develop" "work" "learn"))
    )
)
```
The code above is used for the terminal statements for what the mission statements could end up saying.

## `genMSGramBased.lisp`
This file contains all the code to parse through the grammar.

# Template Based Approach
This is very straight forward, but something we wanted to work with was finding a way to have the template randomly chosen from the list of possible templates.
