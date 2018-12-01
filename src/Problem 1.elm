module Main exposing (last, main, test)

import Html
import List
import Maybe



-- Problem 1
-- Write a function last that returns the last element of a list. An empty list doesn't have a last element, therefore last must return a Maybe.


last : List a -> Maybe a
last xs =
    List.reverse xs |> List.head


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
            [ last (List.range 1 4) == Just 4
            , last [ 1 ] == Just 1
            , last [] == Nothing
            , last [ 'a', 'b', 'c' ] == Just 'c'
            ]
