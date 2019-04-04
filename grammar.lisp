(defparameter MS
    '(IN N VP SP)
)

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