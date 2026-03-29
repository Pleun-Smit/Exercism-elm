module ResistorColorTrio exposing (Color(..), label)

import String


type Color
    = Black
    | Brown
    | Red
    | Orange
    | Yellow
    | Green
    | Blue
    | Violet
    | Grey
    | White


colorValue : Color -> Int
colorValue color =
    case color of 
        Black -> 0
        Brown -> 1
        Red -> 2
        Orange -> 3
        Yellow -> 4
        Green -> 5
        Blue -> 6
        Violet -> 7
        Grey -> 8
        White -> 9


label : List Color -> String
label colors =
    case colors of
        first :: second :: third :: _ ->
            let
                base =
                    colorValue first * 10 + colorValue second

                value =
                    base * (10 ^ colorValue third)
            in
            formatOhms value

        _ ->
            "Nothing"


formatOhms : Int -> String
formatOhms value =
    if value >= 1000000000 then
        String.fromInt (value // 1000000000) ++ " gigaohms"

    else if value >= 1000000 then
        String.fromInt (value // 1000000) ++ " megaohms"

    else if value >= 1000 then
        String.fromInt (value // 1000) ++ " kiloohms"

    else
        String.fromInt value ++ " ohms"