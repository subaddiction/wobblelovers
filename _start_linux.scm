; _start.scm
; primo file da caricare.
; Definisce directory di lavoro e carica librerie, oggetti e textures.


; Base directory
(define base_dir "/home/mrk25/fluxus/wobblelovers/")

; Include general config
(load (string-append base_dir "lib/config_linux.scm"))


; Include primitives library
(load (string-append base_dir "lib/objects.scm"))


; Include functions
(load (string-append base_dir "lib/functions.scm"))


; Move default shapes to visible area
(translate (vector 0 1000 0))


; Fire animations
(every-frame
    ;(begin (display (midi-peek)) (newline))
    (pulse base_dir bgPlane shapeOne shapeTwo shapeThree RedLightness GreenLightness BlueLightness Scale RotX RotY RotZ)
)
