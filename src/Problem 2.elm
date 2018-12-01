module Main exposing (main, penultimate, test)

import Html
import List
import Maybe



-- Problem 2
-- Implement the function penultimate to find the next to last element of a list.


penultimate : List a -> Maybe a
penultimate list =
    case List.reverse list of
        [] ->
            Nothing

        x :: xs ->
            List.head xs


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
            [ penultimate [ 1, 2, 3, 4 ] == Just 3
            , penultimate [ 1, 2 ] == Just 1
            , penultimate [ 1 ] == Nothing
            , penultimate [] == Nothing
            , penultimate [ "a", "b", "c" ] == Just "b"
            , penultimate [ "a" ] == Nothing
            ]
