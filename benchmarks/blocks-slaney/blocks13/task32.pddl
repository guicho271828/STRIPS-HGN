(define (problem BW-13-2654-32)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - block)
    (:init
        (handempty)
        (on b1 b4)
        (on b2 b11)
        (on-table b3)
        (on-table b4)
        (on b5 b12)
        (on b6 b9)
        (on b7 b5)
        (on b8 b13)
        (on b9 b7)
        (on-table b10)
        (on b11 b8)
        (on b12 b3)
        (on b13 b10)
        (clear b1)
        (clear b2)
        (clear b6)
    )
    (:goal
        (and
            (on b1 b4)
            (on-table b2)
            (on-table b3)
            (on-table b4)
            (on b5 b13)
            (on b6 b8)
            (on b7 b11)
            (on b8 b7)
            (on-table b9)
            (on b10 b5)
            (on b11 b9)
            (on b12 b1)
            (on b13 b12)
        )
    )
)