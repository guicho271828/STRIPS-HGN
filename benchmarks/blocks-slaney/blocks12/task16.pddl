(define (problem BW-12-9546-16)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - block)
    (:init
        (handempty)
        (on b1 b8)
        (on-table b2)
        (on b3 b7)
        (on b4 b2)
        (on-table b5)
        (on-table b6)
        (on b7 b4)
        (on b8 b3)
        (on b9 b11)
        (on b10 b9)
        (on b11 b5)
        (on b12 b6)
        (clear b1)
        (clear b10)
        (clear b12)
    )
    (:goal
        (and
            (on b1 b8)
            (on b2 b11)
            (on b3 b7)
            (on b4 b10)
            (on-table b5)
            (on-table b6)
            (on b7 b9)
            (on-table b8)
            (on b9 b6)
            (on b10 b5)
            (on b11 b3)
            (on b12 b1)
        )
    )
)