;(when (key-pressed "q") (shapeSchema smallring bigring kube))

;(when (key-pressed "w") (shapeSchema kube kube kube))

;(when (key-pressed "e") (shapeSchema smallring smallring smallring))

;(when (key-pressed "r") (shapeSchema bigring bigring bigring))

;(when (key-pressed "t") (shapeSchema kube kube kube))

;(when (key-pressed "y") (shapeSchema kube kube kube))


(define ns (make-base-namespace))

(when (key-pressed "q") (eval '(shapeSchema smallring bigring kube) ns))

(when (key-pressed "w") (eval '(shapeSchema kube kube kube)) ns)

(when (key-pressed "e") (eval '(shapeSchema smallring smallring smallring) ns))

(when (key-pressed "r") (eval '(shapeSchema bigring bigring bigring) ns))

(when (key-pressed "t") (eval '(shapeSchema kube kube kube) ns))

(when (key-pressed "y") (eval '(shapeSchema kube kube kube) ns))

