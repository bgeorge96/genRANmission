(defparameter MS
    '(IN N VP SP)
)

(defparameter grammar
    '(
        (SP (ADJ PN))
        (IN (DET INN PREP))
        (VP (HV PREP V))
        (DET (END "the" "an" "a"))
        (ADJ (END "beautiful" "wonderful" "awesome" "amazing" "unbelievable"))
        (PREP (END "of" "at" "for"))
        (HV (END "is"))
        (INN (END "mission" "objective" "plan" "idea" "hope"))
        (N (END "boy" "girl" "turtle" "lady" "baby" "ball" "thing"))
        (PN (END "boys" "girls" "turtles" "ladies" "babies" "balls" "things"))
        (V (END "run" "jump" "hide" "walk" "hike" "work" "play"))
    )
)
;; 