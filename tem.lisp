;Brandon Geroge & Qiang Wang
;Call the function - make to generate a mission
(setf name '("Taylor University" "Baylor University" "High way"))
(setf verb '(have develope improve educate))
(setf noun '(school church community village))
(setf string '(
  "The mission of ~A is to ~A servant leaders marked with a passion to minister Christ's redemptive love and truth to a ~A in need.~%"
  "The mission of ~A is to ~A men and women for worldwide leadership and service by integrating academic excellence and Christian commitment within a ~A community. ~%"
  "~A's mission is to be the ~A first choice for ~A and convenience. ~%"))

(defun pickThings(alist)
  (nth (random (list-length alist)) alist)
)

(defun make ()
  (format t (pickThings string) (pickThings name) (pickThings verb) (pickThings noun))
)
