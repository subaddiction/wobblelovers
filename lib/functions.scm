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
        
        (translate (vector (gh 3) (gh 3) (gh 3)))
        
        
        (rotate (vector (* 2 (gh 8) pulseRotX) (* (gh 0) (sin (time)) pulseRotY) (* 2 (gh 8) pulseRotZ)))
        (rotate (vector (gh 16) (gh 16) (gh 16)))
        
        (colour (vector (* (gh 0) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 4) pulseBlueLightness)))
        (draw-instance shapeOne)
        
        
        (rotate (vector (* 12 (gh 0) (sin (time))) (* 12 (gh 0) (sin (time))) (* 12 (gh 0) (sin (time)))))
        
        (rotate (vector (* (gh 0) pulseRotZ) (* (gh 0) pulseRotY) (* (gh 0) pulseRotX)))
        
        (colour (vector (* (gh 4) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (draw-instance shapeTwo)
        
        
        ;(rotate (vector -45 0 0))
        (rotate (vector (* (gh 0) pulseRotY) (* (gh 1) pulseRotZ) (* (gh 1) pulseRotX)))
        
        (colour (vector (* (gh 2) pulseRedLightness) (* (gh 4) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (draw-instance shapeThree)
    
)


