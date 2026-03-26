module BettysBikeShop exposing (poundsToString, penceToPounds)

-- TODO: import the String module

penceToPounds : Int -> Float
penceToPounds pence =
    toFloat pence / 100
    

poundsToString : Float -> String
poundsToString pounds =
    -- Debug.todo "implement this function and create a type annotation"
    "£" ++ String.fromFloat pounds