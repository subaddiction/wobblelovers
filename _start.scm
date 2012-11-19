; _start.scm
; primo file da caricare.
; Definisce directory di lavoro e carica librerie oggetti e textures.


; Base directory
(define base_dir "/home/mrk25/fluxus/wobblelovers/")

; Include general config
(load (string-append base_dir "lib/config.scm"))


; Include primitives library
(load (string-append base_dir "lib/objects.scm"))

; Include functions
(load (string-append base_dir "lib/functions.scm"))

(translate (vector 0 1000 0))
(shapeSchema kube smallring bigring)

(every-frame
	(pulse base_dir shapeOne shapeTwo shapeThree)
)
