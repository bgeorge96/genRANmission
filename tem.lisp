;Brandon Geroge & Qiang Wang
;Call the function - make to generate a mission
(setf name '("Taylor University" "Baylor University" "Dayton Unversity" "Speedway" "Marathon"))
(setf verb '("invite" "inspire" "engage" "walk" "develop" "work" "learn"))
(setf noun '("students" "adults" "collegues" "youth" "elders"))
(setf string '(
  "The mission of ~A is to ~A servant leaders marked with a passion to minister Christ's redemptive love and truth to a ~A in need."
  "The mission of ~A is to ~A men and women for worldwide leadership and service by integrating academic excellence and Christian commitment within a ~A community."
  "~A's mission is to be the ~A first choice for ~A and convenience."))

(defun pickThings(alist)
  (nth (random (list-length alist)) alist)
)

(defun make ()
  (format nil (pickThings string) (pickThings name) (pickThings verb) (pickThings noun))
)
