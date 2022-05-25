(define (problem pb1) (:domain switches)
(:objects switch1 switch2 switch3 on off)

(:init
    (switch switch1)
    (switch switch2)
    (switch switch3)
    (state on)
    (state off)
    (swstate switch1 off)
    (swstate switch2 off)
    (swstate switch3 off)
)

(:goal (and
    (swstate switch1 on)
    (swstate switch2 on)
    (swstate switch3 on)
))
)
