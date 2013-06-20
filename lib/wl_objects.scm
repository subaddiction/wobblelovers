(clear)

; BASE SHAPES
(define kube (with-state (load-primitive (string-append base_dir "obj/kube.obj"))))
(with-primitive kube (hide 1))

(define smallring (with-state (load-primitive (string-append base_dir "obj/smallring.obj"))))
(with-primitive smallring (hide 1))

(define bigring (with-state (load-primitive (string-append base_dir "obj/bigring.obj"))))
(with-primitive bigring (hide 1))



(define piramide (with-state (load-primitive (string-append base_dir "obj/piramide.obj"))))
(with-primitive piramide (hide 1))

(define triangolo (with-state (load-primitive (string-append base_dir "obj/triangolo.obj"))))
(with-primitive triangolo (hide 1))

(define pandasimple (with-state (load-primitive (string-append base_dir "obj/pandasimple.obj"))))
(with-primitive pandasimple (hide 1))


(define piramidi (with-state (load-primitive (string-append base_dir "obj/piramidi.obj"))))
(with-primitive piramidi (hide 1))

(define triangoli (with-state (load-primitive (string-append base_dir "obj/triangoli.obj"))))
(with-primitive triangoli (hide 1))


(define piramidiring (with-state (load-primitive (string-append base_dir "obj/piramidiring.obj"))))
(with-primitive piramidiring (hide 1))

(define triangoliring (with-state (load-primitive (string-append base_dir "obj/triangoliring.obj"))))
(with-primitive triangoliring (hide 1))


(define piramidisphere (with-state (load-primitive (string-append base_dir "obj/piramidisphere.obj"))))
(with-primitive piramidisphere (hide 1))

(define triangolisphere (with-state (load-primitive (string-append base_dir "obj/triangolisphere.obj"))))
(with-primitive triangolisphere (hide 1))


(define triA (with-state (load-primitive (string-append base_dir "obj/triA.obj"))))
(with-primitive triA (hide 1))

(define triB (with-state (load-primitive (string-append base_dir "obj/triB.obj"))))
(with-primitive triB (hide 1))

(define triC (with-state (load-primitive (string-append base_dir "obj/triC.obj"))))
(with-primitive triC (hide 1))


(define hexA (with-state (load-primitive (string-append base_dir "obj/hexA.obj"))))
(with-primitive hexA (hide 1))

(define moleculeA (with-state (load-primitive (string-append base_dir "obj/moleculeA.obj"))))
(with-primitive hexA (hide 1))

(define nautilus (with-state (load-primitive (string-append base_dir "obj/nautilus.obj"))))
(with-primitive nautilus (hide 1))





;lettering
;(define pandaparty (with-state (load-primitive (string-append base_dir "obj/panda_party.obj"))))
(define pandapartyinner (with-state (load-primitive (string-append base_dir "obj/panda_party_inner.obj"))))
(with-primitive pandapartyinner (hide 1))

(define pandapartyouter (with-state (load-primitive (string-append base_dir "obj/panda_party_outer.obj"))))
(with-primitive pandapartyouter (hide 1))

(define wl_logo (with-state (load-primitive (string-append base_dir "obj/wl_logo.obj"))))
(with-primitive wl_logo (hide 1))

(define wr_logo (with-state (load-primitive (string-append base_dir "obj/wr_logo.obj"))))
(with-primitive * (hide 1))

(define wobble (with-state (load-primitive (string-append base_dir "obj/wobble.obj"))))
(with-primitive wobble (hide 1))

(define baila (with-state (load-primitive (string-append base_dir "obj/baila.obj"))))
(with-primitive baila (hide 1))

(define meduele (with-state (load-primitive (string-append base_dir "obj/meduele.obj"))))
(with-primitive meduele (hide 1))

(define swagger (with-state (load-primitive (string-append base_dir "obj/swagger.obj"))))
(with-primitive swagger (hide 1))

(define yo (with-state (load-primitive (string-append base_dir "obj/yo.obj"))))
(with-primitive yo (hide 1))



; Add objects to library with:
; (define objID (with-state (load-primitive (string-append base_dir "obj/objFile.obj"))))


; Define the dummy primitives

(define shapeOne (build-cube))
(with-primitive shapeOne (hide 1))

(define shapeTwo (build-cube))
(with-primitive shapeTwo (hide 1))

(define shapeThree (build-cube))
(with-primitive shapeThree (hide 1))

;Define Initial colors
(define RedLightness 0.5)
(define GreenLightness 0.25)
(define BlueLightness 0.25)

;Define initial tranformation settings
(define Scale 0.2)
(define RotX -60)
(define RotY 60)
(define RotZ -60)



