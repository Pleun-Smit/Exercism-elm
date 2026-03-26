module TracksOnTracksOnTracks exposing (..)


newList : List String
newList = []



existingList : List String
existingList = ["Elm", "Clojure", "Haskell"]



addLanguage : String -> List String -> List String
addLanguage language languages = 
    language :: languages



countLanguages : List String -> Int
countLanguages languages =
    List.length languages



reverseList : List String -> List String
reverseList languages =
    case languages of 
        [] -> []
        [x] -> [x]

        first::rest ->
            (reverseList rest) ++ [first]



    
excitingList : List String -> Bool
excitingList languages =
    -- (List.member "Elm" languages && List.length languages <= 3)
        case languages of
        first :: second :: _ ->
            (first == "Elm")||((second == "Elm")&&List.length languages <= 3)
        
        [ first ] ->
            first == "Elm"

        [] ->
            False
