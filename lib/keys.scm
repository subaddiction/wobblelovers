; Shape schemes
(when (key-pressed "q") (shapeSchema bgPlane kube smallring bigring))

(when (key-pressed "w") (shapeSchema bgPlane kube kube kube))

(when (key-pressed "e") (shapeSchema bgPlane smallring smallring smallring))

(when (key-pressed "r") (shapeSchema bgPlane bigring bigring bigring))


; Color schemes
(when (key-pressed "a") (colorSchema 0.5 0.25 0.25))

(when (key-pressed "s") (colorSchema 0.25 0.5 0.25))

(when (key-pressed "d") (colorSchema  0.25 0.25 0.5))

(when (key-pressed "f") (colorSchema 0.5 0.25 0.5))


; Transform schemes
(define baseScale 0.2)
(when (key-pressed "z") (transformSchema baseScale -60 60 -60))

(when (key-pressed "x") (transformSchema baseScale 60 60 -60))

(when (key-pressed "c") (transformSchema baseScale -60 -60 -60))

(when (key-pressed "v") (transformSchema baseScale -60 60 60))
