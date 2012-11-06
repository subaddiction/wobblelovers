(load "config.scm")



(define logo (with-state (rotate(vector 0 0 0)) (load-primitive "kube.obj")))
(define txtTop (with-state (build-extruded-type "FreeSans.ttf" "Wobble" 1)))
(define txtBot (with-state (build-extruded-type "FreeSans.ttf" "Lovers" 1)))

(define (pulse)
    
    (define pulseRedLightness 5)
    (define pulseGreenLightness 0.25)
    (define pulseBlueLightness 0.25)
    
    (define pulseScale 0.2)
    (define pulseRotX -12)
    (define pulseRotY 12)
    (define pulseRotZ 0)
    
    (colour (vector (* (gh 0) pulseRedLightness) (* (gh 2) pulseGreenLightness) (* (gh 4) pulseBlueLightness)))
    
    (scale (vector (* (gh 0) pulseScale) (* (gh 0) pulseScale) (* (gh 0) pulseScale)))
    
    
    
    ;(translate (vector (gh 3) (gh 3) (gh 3)))
    
    (rotate (vector 0 -45 0))
    (rotate (vector 0 (* 22.5 (gh 0) (sin (time))) 0))
    (rotate (vector (* (gh 0) pulseRotX) (* (gh 1) pulseRotY) (* (gh 1) pulseRotZ)))
    
    (draw-instance logo)
    
    (translate (vector -7 8 0))
    (draw-instance txtTop)

    (translate (vector 1 -18 0))
    (draw-instance txtBot)
)

(every-frame (pulse))
