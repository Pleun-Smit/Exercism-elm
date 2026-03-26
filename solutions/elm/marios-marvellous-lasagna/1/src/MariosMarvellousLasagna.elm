module MariosMarvellousLasagna exposing (remainingTimeInMinutes)

-- TODO: define the remainingTimeInMinutes function

remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes layers minutesElapsed =
    let
        expectedMinutesInOven =
            40

        preparationTime =
            layers * 2
    in
    expectedMinutesInOven + preparationTime - minutesElapsed


