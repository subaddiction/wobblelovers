; midi controls
(define baseScale 0.2)
(when (midi-peek)
	; Korg nano kontrol Scene 4
	
	; knob 1
	(desiredfps (+ 1 (* 24 (midi-ccn 0 10))))
	
	; knob2 
	(gain (midi-ccn 1 10))
	
	; knob3
	(blur (midi-ccn 2 10))
	
	
	; Fader 1 2 3 RGB
	(colorSchema (midi-ccn 0 7) (midi-ccn 1 7) (midi-ccn 2 7))
	
	; knob3 scale - Fader 456 Rotate
	(transformSchema baseScale (* 180 (midi-ccn 3 7)) (* 180 (midi-ccn 4 7)) (* 180 (midi-ccn 5 7)))
	
)

; Shape schemes
(when (key-pressed "q") (shapeSchema bgPlane wobble piramidi triangoli))

(when (key-pressed "w") (shapeSchema bgPlane pandapartyinner bigring piramide))

(when (key-pressed "e") (shapeSchema bgPlane pandapartyouter triangolo piramide))

(when (key-pressed "r") (shapeSchema bgPlane piramidi smallring bigring))

(when (key-pressed "t") (shapeSchema bgPlane triangoli bigring triangolo))

(when (key-pressed "y") (shapeSchema bgPlane wl_logo triangolo triangoliring))

(when (key-pressed "u") (shapeSchema bgPlane wr_logo piramidiring piramide))

(when (key-pressed "u") (shapeSchema bgPlane baila triangoliring piramidiring))

(when (key-pressed "i") (shapeSchema bgPlane meduele triangoli piramidi))

(when (key-pressed "o") (shapeSchema bgPlane swagger triangolo piramide))

(when (key-pressed "p") (shapeSchema bgPlane yo triangolo piramide))



(when (key-pressed "a") (shapeSchema bgPlane pandasimple piramidiring piramide))

(when (key-pressed "s") (shapeSchema bgPlane triangoli piramide triangolo))

(when (key-pressed "d") (shapeSchema bgPlane pandasimple piramidiring triangoliring))

(when (key-pressed "f") (shapeSchema bgPlane piramidi smallring bigring))

(when (key-pressed "g") (shapeSchema bgPlane pandasimple triangolo piramide))

(when (key-pressed "h") (shapeSchema bgPlane piramidi pandasimple triangolo))

(when (key-pressed "j") (shapeSchema bgPlane triangoli pandasimple piramide))

(when (key-pressed "k") (shapeSchema bgPlane piramidi triangolo triangoliring ))

(when (key-pressed "l") (shapeSchema bgPlane triangoli smallring piramidiring))



(when (key-pressed "z") (shapeSchema bgPlane kube smallring bigring))

(when (key-pressed "x") (shapeSchema bgPlane kube bigring piramide))

(when (key-pressed "c") (shapeSchema bgPlane ))

(when (key-pressed "v") (shapeSchema bgPlane ))

(when (key-pressed "b") (shapeSchema bgPlane ))

(when (key-pressed "n") (shapeSchema bgPlane ))

(when (key-pressed "m") (shapeSchema bgPlane ))





; Color schemes
;(when (key-pressed "z") (colorSchema 0.5 0.25 0.25))

;(when (key-pressed "x") (colorSchema 0.25 0.75 0.25))

;(when (key-pressed "c") (colorSchema  0.5 0.25 0.75))

; Transform schemes

;(when (key-pressed "v") (transformSchema baseScale 36 36 36))

;(when (key-pressed "b") (transformSchema baseScale -36 -36 -36))

;(when (key-pressed "n") (transformSchema baseScale 36 36 -36))

;(when (key-pressed "m") (transformSchema baseScale -36 36 -36))
