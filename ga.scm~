 (clear)
 (reset-camera)
 (blur 0)
 (define p (build-ribbon 1024))
 #(define p (build-text "oooooooooo"))
 (with-primitive p
    (colour (vector 1 0 0))
    (hint-unlit)
    (pdata-map! (lambda (w) .02) "w"))

 (every-frame
    (let ([a (ga)])
        (with-primitive p
            (pdata-index-map!
                (lambda (i p)
                    (vector (* .08 (- i (/ (pdata-size) 2))) (* 50 (vector-ref a i)) 0))
                "p"))))
