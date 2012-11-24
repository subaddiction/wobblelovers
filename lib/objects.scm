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

; Add objects to library with:
; (define objID (with-state (load-primitive (string-append base_dir "obj/objFile.obj"))))

; Define the dummy primitives
(define bgPlane (build-plane))
(define shapeOne (build-cube))
(define shapeTwo (build-cube))
(define shapeThree (build-cube))

