(define (domain switches2)

(:requirements :strips :negative-preconditions)

(:predicates 
(switch ?sw)
(isOn ?sw)
(isOff ?sw)
(neighbors ?sw1 ?sw2)
)

(:action turnOn
    :parameters (?sw ?s2)
    :precondition (and (switch ?sw)
        (switch ?s2)
        (isOff ?sw)
        (neighbors ?sw ?s2)
        (isOn ?s2)
        )
    :effect (and (isOn ?sw)
    (not(isOff ?sw)))
    )
    
(:action turnOff
    :parameters (?sw)
    :precondition (and (switch ?sw)
    (isOn ?sw)
    )
    :effect (and (isOff?sw)
    (not(isOn ?sw)))
)

)
