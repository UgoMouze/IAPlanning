(define (problem pb2) (:domain switches2)
(:objects sw1 sw2 sw3 sw4 sw5)

(:init
    (switch sw1)
    (switch sw2)
    (switch sw3)
    (switch sw4)
    (switch sw5)
    (neighbors sw1 sw2)
    (neighbors sw2 sw1)
    (neighbors sw2 sw3)
    (neighbors sw3 sw2)
    (neighbors sw3 sw4)
    (neighbors sw4 sw3)
    (neighbors sw4 sw5)
    (neighbors sw5 sw4)
    (isOff sw1)
    (isOff sw2)
    (isOn sw3)
    (isOff sw4)
    (isOff sw5)
)

(:goal (and
    (isOn sw1)
    (isOn sw2)
    (isOn sw3)
    (isOn sw4)
    (isOn sw5)
))
)
