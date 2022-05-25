(define (domain switches)

(:requirements :strips :negative-preconditions)

(:predicates 
(switch ?sw)
(state ?st)
(swstate ?sw ?st)
)

(:action change
    :parameters (?sw ?st)
    :precondition (and (switch ?sw) (state ?st) (not (swstate ?sw ?st)))
    :effect (and (swstate ?sw ?st)))
)
