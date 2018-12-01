module Main exposing (elementAt, main, test)

import Html
import List
import Maybe



-- Problem 3
-- Implement the function elementAt to return the n-th element of a list. The index is 1-relative, that is, the first element is at index 1.


elementAt : List a -> Int -> Maybe a
elementAt xs n =
    case ( xs, n ) of
        ( [], _ ) ->
            Nothing

        ( x :: xx, 1 ) ->
            Just x

        ( x :: xx, _ ) ->
            elementAt xx (n - 1)


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
            [ elementAt [ 1, 2, 3, 4 ] 2 == Just 2
            , elementAt [ 1 ] 2 == Nothing
            , elementAt [ 1 ] 1 == Just 1
            , elementAt [] 2 == Nothing
            , elementAt [] -1 == Nothing
            , elementAt [] 0 == Nothing
            , elementAt [ 1, 2, 3, 4 ] -1 == Nothing
            , elementAt [ 1, 2, 3, 4 ] 0 == Nothing
            , elementAt [ 'a', 'b', 'c' ] 2 == Just 'b'
            ]
