; Primitives switcher
(define (shapeSchema assignPlane assignOne assignTwo assignThree)

(translate (vector 0 -1000 0))
	    (set! bgPlane assignPlane)
	    (set! shapeOne assignOne)
	    (set! shapeTwo assignTwo)
	    (set! shapeThree assignThree)
)

; Primitive movement
(define (pulse base_dir bgPlane shapeOne shapeTwo shapeThree)    
	
	; Include keybindings
	(load (string-append base_dir "lib/keys.scm"))
	
	
	; Assign colors
	(define pulseRedLightness 0.5)
	(define pulseGreenLightness 0.25)
	(define pulseBlueLightness 0.25)

	(define pulseScale 0.2)
	(define pulseRotX -60)
	(define pulseRotY 60)
	(define pulseRotZ -60)
	
	
	; Move shapes to visible area
	(with-primitive bgPlane (translate (vector 0 1000 -10)))
	
        (with-primitive shapeOne (translate (vector 0 1000 0)))
        (with-primitive shapeTwo (translate (vector 0 1000 0)))
        (with-primitive shapeThree (translate (vector 0 1000 0)))
        
        
        ; Animate shapes
        
        
        (scale (vector (* (gh 0) pulseScale) (* (gh 0) pulseScale) (* (gh 0) pulseScale)))
        
        (translate (vector (gh 3) (gh 3) (gh 3)))
        
        (rotate (vector 0 -45 0))
        (rotate (vector 0 (* 22.5 (gh 0) (sin (time))) 0))
        (rotate (vector (* (gh 0) pulseRotX) (* (gh 0) pulseRotY) (* (gh 0) pulseRotZ)))
        
        (colour (vector (* (gh 0) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 4) pulseBlueLightness)))
        (draw-instance shapeOne)
        
        (rotate (vector (* (gh 0) pulseRotZ) (* (gh 0) pulseRotY) (* (gh 0) pulseRotX)))
        
        (colour (vector (* (gh 4) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (draw-instance shapeTwo)
        
        
        (rotate (vector (* (gh 0) pulseRotY) (* (gh 1) pulseRotZ) (* (gh 1) pulseRotX)))
        
        (colour (vector (* (gh 2) pulseRedLightness) (* (gh 4) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (draw-instance shapeThree)
    
)





