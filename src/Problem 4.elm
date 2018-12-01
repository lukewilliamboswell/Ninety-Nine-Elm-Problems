module Main exposing (countElements, main, test)

import Html
import List
import Maybe



-- Problem 4
-- Elm provides the function List.length. See if you can implement it yourself.


countElements : List a -> Int
countElements xs =
    case xs of
        [] ->
            0

        [ x ] ->
            1

        x :: xx ->
            1 + countElements xx


main : Html.Html a
main =
    Html.text <|
        case test of
            0 ->
                "Your implementation passed all tests."

            1 ->
                "Your implementation failed one test."

            x ->
                "Your implementation failed " ++ String.fromInt x ++ " tests."


test : Int
test =
    List.length <|
        List.filter ((==) False)
            [ countElements (List.range 1 4000) == 4000
            , countElements [ 1 ] == 1
            , countElements [] == 0
            , countElements [ 'a', 'b', 'c' ] == 3
            ]
