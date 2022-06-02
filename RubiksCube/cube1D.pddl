;Header and description

(define (domain Cube1D)

;remove requirements that are not needed
(:requirements :strips)


(:predicates 
(numbers ?n)
(cube ?n1 ?n2 ?n3 ?n4 ?n5 ?n6)
)

(:action operator0
    :parameters (?n1 ?n2 ?n3 ?n4 ?n5 ?n6)
    :precondition (and (numbers ?n1)
    (numbers ?n2)
    (numbers ?n3)
    (numbers ?n4)
    (numbers ?n5)
    (numbers ?n6)
    (cube ?n1 ?n2 ?n3 ?n4 ?n5 ?n6))
    :effect (and (cube ?n4 ?n3 ?n2 ?n1 ?n5 ?n6))
)

(:action operator1
    :parameters (?n1 ?n2 ?n3 ?n4 ?n5 ?n6)
    :precondition (and (numbers ?n1)
    (numbers ?n2)
    (numbers ?n3)
    (numbers ?n4)
    (numbers ?n5)
    (numbers ?n6)
    (cube ?n1 ?n2 ?n3 ?n4 ?n5 ?n6))
    :effect (and (cube ?n1 ?n5 ?n4 ?n3 ?n2 ?n6))
)

(:action operator2
    :parameters (?n1 ?n2 ?n3 ?n4 ?n5 ?n6)
    :precondition (and (numbers ?n1)
    (numbers ?n2)
    (numbers ?n3)
    (numbers ?n4)
    (numbers ?n5)
    (numbers ?n6)
    (cube ?n1 ?n2 ?n3 ?n4 ?n5 ?n6))
    :effect (and (cube ?n1 ?n2 ?n6 ?n5 ?n4 ?n3))
)
)