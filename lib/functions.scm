; Primitives switcher
(define (shapeSchema assignOne assignTwo assignThree)

(translate (vector 0 -1000 0))
	    (set! shapeOne assignOne)
	    (set! shapeTwo assignTwo)
	    (set! shapeThree assignThree)
)

; Primitive movement
(define (pulse base_dir shapeOne shapeTwo shapeThree)    

(define pulseRedLightness 0.5)
(define pulseGreenLightness 0.25)
(define pulseBlueLightness 0.25)

(define pulseScale 0.2)
(define pulseRotX -22.5)
(define pulseRotY 22.5)
(define pulseRotZ -22.5)
	
	
; Include keybindings
(load (string-append base_dir "lib/keys.scm"))
        
        (with-primitive shapeOne (translate (vector 0 1000 0)))
        (with-primitive shapeTwo (translate (vector 0 1000 0)))
        (with-primitive shapeThree (translate (vector 0 1000 0)))
        
        
        (colour (vector (* (gh 0) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 4) pulseBlueLightness)))
        
        (scale (vector (* (gh 0) pulseScale) (* (gh 0) pulseScale) (* (gh 0) pulseScale)))
        
        
        
        (translate (vector (gh 3) (gh 3) (gh 3)))
        
        (rotate (vector 0 -45 0))
        (rotate (vector 0 (* 22.5 (gh 0) (sin (time))) 0))
        (rotate (vector (* (gh 0) pulseRotX) (* (gh 1) pulseRotY) (* (gh 1) pulseRotZ)))
        
        (draw-instance shapeOne)
        
        (colour (vector (* (gh 4) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (draw-instance shapeTwo)
        
        (colour (vector (* (gh 2) pulseRedLightness) (* (gh 4) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
        (rotate (vector (* (gh 0) pulseRotZ) (* (gh 1) pulseRotY) (* (gh 1) pulseRotX)))
        (draw-instance shapeThree)
    
)





