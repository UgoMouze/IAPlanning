(define (problem example1) (:domain Cube1D)
(:objects n1 n2 n3 n4 n5 n6
)

(:init
    (numbers n1)
    (numbers n2)
    (numbers n3)
    (numbers n4)
    (numbers n5)
    (numbers n6)
    (cube n6 n5 n4 n1 n2 n3)
)

(:goal (and
    (cube n1 n2 n3 n4 n5 n6)
))

)
