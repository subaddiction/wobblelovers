(load "config.scm")



(define kube (with-state (rotate(vector 0 0 0)) (load-primitive "kube.obj")))
(define bigring (with-state (rotate(vector 0 0 0)) (load-primitive "bigring.obj")))
(define smallring (with-state (rotate(vector 0 0 0)) (load-primitive "smallring.obj")))

(define (pulse)
    
    (define pulseRedLightness 0.5)
    (define pulseGreenLightness 0.25)
    (define pulseBlueLightness 0.25)
    
    (define pulseScale 0.2)
    (define pulseRotX -22.5)
    (define pulseRotY 22.5)
    (define pulseRotZ -22.5)
    
    (colour (vector (* (gh 0) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 4) pulseBlueLightness)))
    
    (scale (vector (* (gh 0) pulseScale) (* (gh 0) pulseScale) (* (gh 0) pulseScale)))
    
    
    
    (translate (vector (gh 3) (gh 3) (gh 3)))
    
    (rotate (vector 0 -45 0))
    (rotate (vector 0 (* 22.5 (gh 0) (sin (time))) 0))
    (rotate (vector (* (gh 0) pulseRotX) (* (gh 1) pulseRotY) (* (gh 1) pulseRotZ)))
    
    (draw-instance kube)
    
    (colour (vector (* (gh 4) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
    (draw-instance bigring)
    
    (colour (vector (* (gh 2) pulseRedLightness) (* (gh 4) pulseGreenLightness) (* (gh 0) pulseBlueLightness)))
    (rotate (vector (* (gh 0) pulseRotZ) (* (gh 1) pulseRotY) (* (gh 1) pulseRotX)))
    (draw-instance smallring)
)

(every-frame (pulse))
