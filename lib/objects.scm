(clear)

; Translate y -1000
(translate (vector 0 -1000 0))

(define objList (directory-list (string-append base_dir "obj/")))

; Load all 3d primitives - not yet implemented - wish to scan dir for .obj files
;(map
;	(lambda (object)
;	(define object (with-state (load-primitive (string-append base_dir (string-append "obj/" object)))))
;	)
;	objList
;)


(define kube (with-state (load-primitive (string-append base_dir "obj/kube.obj"))))
(define smallring (with-state (load-primitive (string-append base_dir "obj/smallring.obj"))))
(define bigring (with-state (load-primitive (string-append base_dir "obj/bigring.obj"))))



(define piramide (with-state (load-primitive (string-append base_dir "obj/piramide.obj"))))
(define triangolo (with-state (load-primitive (string-append base_dir "obj/triangolo.obj"))))
(define pandasimple (with-state (load-primitive (string-append base_dir "obj/pandasimple.obj"))))

(define piramidi (with-state (load-primitive (string-append base_dir "obj/piramidi.obj"))))
(define triangoli (with-state (load-primitive (string-append base_dir "obj/triangoli.obj"))))

(define piramidiring (with-state (load-primitive (string-append base_dir "obj/piramidiring.obj"))))
(define triangoliring (with-state (load-primitive (string-append base_dir "obj/triangoliring.obj"))))

(define piramidisphere (with-state (load-primitive (string-append base_dir "obj/piramidisphere.obj"))))
(define triangolisphere (with-state (load-primitive (string-append base_dir "obj/triangolisphere.obj"))))

(define triA (with-state (load-primitive (string-append base_dir "obj/triA.obj"))))
(define triB (with-state (load-primitive (string-append base_dir "obj/triB.obj"))))
(define triC (with-state (load-primitive (string-append base_dir "obj/triC.obj"))))

(define hexA (with-state (load-primitive (string-append base_dir "obj/hexA.obj"))))
(define moleculeA (with-state (load-primitive (string-append base_dir "obj/moleculeA.obj"))))
(define nautilus (with-state (load-primitive (string-append base_dir "obj/nautilus.obj"))))




;lettering
;(define pandaparty (with-state (load-primitive (string-append base_dir "obj/panda_party.obj"))))
(define pandapartyinner (with-state (load-primitive (string-append base_dir "obj/panda_party_inner.obj"))))
(define pandapartyouter (with-state (load-primitive (string-append base_dir "obj/panda_party_outer.obj"))))
(define wl_logo (with-state (load-primitive (string-append base_dir "obj/wl_logo.obj"))))
(define wr_logo (with-state (load-primitive (string-append base_dir "obj/wr_logo.obj"))))
(define wobble (with-state (load-primitive (string-append base_dir "obj/wobble.obj"))))
(define baila (with-state (load-primitive (string-append base_dir "obj/baila.obj"))))
(define meduele (with-state (load-primitive (string-append base_dir "obj/meduele.obj"))))
(define swagger (with-state (load-primitive (string-append base_dir "obj/swagger.obj"))))
(define yo (with-state (load-primitive (string-append base_dir "obj/yo.obj"))))


; Add objects to library with:
; (define objID (with-state (load-primitive (string-append base_dir "obj/objFile.obj"))))


; Define the dummy primitives
(define bgPlane (build-plane))
(define shapeOne (build-cube))
(define shapeTwo (build-cube))
(define shapeThree (build-cube))

;Define Initial colors
(define RedLightness 0.5)
(define GreenLightness 0.25)
(define BlueLightness 0.25)

;Define initial tranformation settings
(define Scale 0.2)
(define RotX -60)
(define RotY 60)
(define RotZ -60)



