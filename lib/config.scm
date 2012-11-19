(clear)
(reset-camera)
(start-audio "alsa_pcm:capture_1" 1024 44100)
(gain 0.1)

(load (string-append base_dir "lib/objects.scm"))

(ambient 0)
(blur 0)
(desiredfps 24)
