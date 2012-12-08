; Primitives switcher
(define (shapeSchema assignPlane assignOne assignTwo assignThree)
	
	(scale (vector -1000 -1000 -1000))
	(translate (vector 0 -1000 0))
	
	(set! bgPlane assignPlane)
	
	(set! shapeOne assignOne)
	
	(set! shapeTwo assignTwo)
	
	(set! shapeThree assignThree)
	
)

; Color switcher
(define (colorSchema Red Green Blue)

	(set! RedLightness Red)
	(set! GreenLightness Green)
	(set! BlueLightness Blue)
)

; Transformations intensity
(define (transformSchema S X Y Z)

	(set! Scale S)
	(set! RotX X)
	(set! RotY Y)
	(set! RotZ Z)
)

; Blur
;(define (setBlur midiValue)
;	(set! midiBlur midiValue)
;)

; Primitive movement
(define (pulse base_dir bgPlane shapeOne shapeTwo shapeThree pulseRedLightness pulseGreenLightness pulseBlueLightness pulseScale pulseRotX pulseRotY pulseRotZ)
	
	; Include keybindings
	(load (string-append base_dir "lib/keys.scm"))
	
	; Move shapes to visible area
	(with-primitive bgPlane (translate (vector -100 1000 0)))
	
	; Put background 25 backwards
	(translate (vector 0 0 -50))
	(scale (vector 10000 10000 10000))
	
	
	;(with-primitive bgPlane (scale (vector 50 50 50)))
	(colour (vector 0 0 0))
	(draw-instance bgPlane)

	
	; Put everything else 25 forward
	(scale (vector 0.0001 0.0001 0.0001))
	(translate (vector 0 0 50))
	
        (with-primitive shapeOne (translate (vector 0 1000 0)))
        (with-primitive shapeTwo (translate (vector 0 1000 0)))
        (with-primitive shapeThree (translate (vector 0 1000 0)))
        
        
        ; Animate shapes
        (scale (vector (* (gh 0) pulseScale) (* (gh 0) pulseScale) (* (gh 0) pulseScale)))
        
        (translate (vector (* 0.01 pulseRotX (gh 4)) (* 0.01 pulseRotY (gh 4)) (* 0.01 pulseRotZ (gh 4))))
        
        
        (rotate (vector (- (* 1.5 (gh 8) pulseRotX) 0.75) (- (* 3 (gh 0) (sin (time)) pulseRotY) 1.5) (- (* 0.3 (gh 8) pulseRotZ) 0.15)))
        (rotate (vector (gh 16) (gh 16) (gh 16)))
        
        (colour (vector (* (gh 0) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 4) pulseBlueLightness)))
        (draw-instance shapeOne)
        
	
        (rotate (vector (* 6 (gh 0) pulseRotX) (* 6 (gh 0) pulseRotY) (* 6 (gh 0) pulseRotZ)))
        
        (rotate (vector (* (gh 0) pulseRotZ) (* (gh 0) pulseRotY) (* (gh 0) pulseRotX)))
        
        (colour (vector (* (gh 4) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (draw-instance shapeTwo)
        
        
        ;(rotate (vector 0 -90 0))
        (rotate (vector (* 6 (gh 1) pulseRotY) (* 6 (gh 1) pulseRotZ) (* 6 (gh 1) pulseRotX)))
        
        (colour (vector (* (gh 2) pulseRedLightness) (* (gh 4) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (draw-instance shapeThree)
    
)


