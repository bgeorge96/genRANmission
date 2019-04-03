(defparameter MS
    '(IN N V N)
)

(defparameter grammar
    '(
        (IN (DET INN PREP))
        (DET ("the" "a"))
        (PREP ("of"))
        (INN ("mission" "objective" "plan" "idea" ""))
        (N ("boy" "girl" "turtle" "lady" "baby" "ball" "thing"))
        (V ("run" "jump" "hide" "walk" "hike" "work" "play"))
    )
)