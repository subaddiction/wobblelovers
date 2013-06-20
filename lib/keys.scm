; midi controls
(define baseScale 0.2)
(when (midi-peek)
	; Korg nano kontrol Scene 4 (custom)
	
	; knob 1
	(desiredfps (+ 1 (* 24 (midi-ccn 0 10))))
	
	; knob2 
	(gain (midi-ccn 1 10))
	
	; knob3
	(set! baseScale (* 100 (midi-ccn 2 10)))
	
	; Fader 1 2 3 RGB
	(colorSchema (midi-ccn 0 7) (midi-ccn 1 7) (midi-ccn 2 7))
	
	; knob3 scale - Fader 456 Rotate
	(transformSchema (* baseScale (midi-cc 2 10)) (- (* 36 (midi-ccn 3 7)) 18) (- (* 36 (midi-ccn 4 7)) 18) (- (* 36 (midi-ccn 5 7)) 18))
	
)


; Testing calls
;;;(define (testConf)
;;;	(desiredfps 24)
;;;	(gain 0.5)
;;;	(set! baseScale 100)
;;;	(colorSchema 8 6 8)
;;;	(transformSchema 100 0 0 0)
;;;)
;;;(when (key-pressed ".") (testConf))


; Shape schemes


(when (key-pressed "q") (shapeSchema partyeverynight piramidiring triangolisphere))

(when (key-pressed "w") (shapeSchema wl_logo piramidisphere triangoliring))

(when (key-pressed "e") (shapeSchema partybass triangoloBig piramidiring))

(when (key-pressed "r") (shapeSchema getithot triangoliring triangoloBig))

(when (key-pressed "t") (shapeSchema woah triangoloBig piramidiring))

(when (key-pressed "y") (shapeSchema dontwonna triangoloBig triangoliring))

(when (key-pressed "u") (shapeSchema areyoukiddingme triangoliring piramidisphere))

(when (key-pressed "i") (shapeSchema bounce piramidiring triangolisphere))

(when (key-pressed "o") (shapeSchema move triangolisphere piramidiring))

(when (key-pressed "p") (shapeSchema swagger triangoliring piramidisphere))





(when (key-pressed "a") (shapeSchema pandapartyouter triangoliring bigring))

(when (key-pressed "s") (shapeSchema swing piramidiring triangolisphere))

(when (key-pressed "d") (shapeSchema jumparound triangoliring piramidiring))

(when (key-pressed "f") (shapeSchema wobblerap triangolisphere piramidiring))

(when (key-pressed "g") (shapeSchema triangoloBig bigring piramidisphere))

(when (key-pressed "h") (shapeSchema triangoloBig piramidiring triangolisphere))

(when (key-pressed "j") (shapeSchema triA bigring triangoliring))

(when (key-pressed "k") (shapeSchema triB triangoliring piramidiring))

(when (key-pressed "l") (shapeSchema triC piramidisphere triangolisphere))



(when (key-pressed "z") (shapeSchema kube smallring bigring))

(when (key-pressed "x") (shapeSchema triangolisphere triA piramidiring))

(when (key-pressed "c") (shapeSchema triangoliring hexA piramidisphere))

(when (key-pressed "v") (shapeSchema piramidisphere moleculeA bigring))

(when (key-pressed "b") (shapeSchema triangolisphere nautilus bigring))

(when (key-pressed "n") (shapeSchema subaddiction triangoliring bigring))

(when (key-pressed "m") (shapeSchema subaddiction triangolisphere triangolisphere))


;OLD
;;;;;(when (key-pressed "q") (shapeSchema wobble piramidi triangolisphere))

;;;;;(when (key-pressed "w") (shapeSchema pandapartyinner piramide triangolisphere))

;;;;;(when (key-pressed "e") (shapeSchema pandapartyouter triangolo piramidi))

;;;;;(when (key-pressed "r") (shapeSchema wr_logo piramide piramidiring))

;;;;;(when (key-pressed "t") (shapeSchema wl_logo triangolo triangoliring))

;;;;;(when (key-pressed "y") (shapeSchema wobble triangoliring triangoli))

;;;;;(when (key-pressed "u") (shapeSchema baila triangoliring piramidiring))

;;;;;(when (key-pressed "i") (shapeSchema meduele triangoli piramidi))

;;;;;(when (key-pressed "o") (shapeSchema swagger piramide triangolo))

;;;;;(when (key-pressed "p") (shapeSchema yo triangolo piramidisphere))



;;;;;(when (key-pressed "a") (shapeSchema pandasimple piramide piramidiring))

;;;;;(when (key-pressed "s") (shapeSchema triangolo piramidi triangolisphere))

;;;;;(when (key-pressed "d") (shapeSchema pandasimple piramidiring triangoliring))

;;;;;(when (key-pressed "f") (shapeSchema triangolo triangoliring triangolisphere))

;;;;;(when (key-pressed "g") (shapeSchema pandasimple triangolo piramidisphere))

;;;;;(when (key-pressed "h") (shapeSchema piramidisphere piramidi triangoliring))

;;;;;(when (key-pressed "j") (shapeSchema triangolisphere triangoli piramidiring))

;;;;;(when (key-pressed "k") (shapeSchema triangoliring triangolo piramidi))

;;;;;(when (key-pressed "l") (shapeSchema piramidiring triangolo triangoli))



;;;;;(when (key-pressed "z") (shapeSchema partyeverynight smallring bigring))

;;;;;(when (key-pressed "x") (shapeSchema triangolisphere triA piramidi))

;;;;;(when (key-pressed "c") (shapeSchema piramidisphere triB triangoli))

;;;;;(when (key-pressed "v") (shapeSchema triangolisphere triC piramidiring))

;;;;;(when (key-pressed "b") (shapeSchema hexA triangoliring piramidi))

;;;;;(when (key-pressed "n") (shapeSchema piramidisphere moleculeA triangoli))

;;;;;(when (key-pressed "m") (shapeSchema triangolisphere nautilus piramidi))




