module Main exposing (main, myReverse, test)

import Html exposing (text)
import List



-- Problem 5
-- Elm provides the function List.reverse to reverse the order of elements in a list. See if you can implement it.


myReverse : List a -> List a
myReverse xs =
    case xs of
        [] ->
            []

        [ x ] ->
            [ x ]

        x :: xx ->
            List.append (myReverse xx) [ x ]


main : Html.Html a
main =
    Html.text <|
        case test of
            0 ->
                "Your implementation passed all tests."

            1 ->
                "Your implementation failed one test."

            n ->
                "Your implementation failed " ++ String.fromInt n ++ " tests."


test : Int
test =
    List.length <|
        List.filter ((==) False)
            [ myReverse [ 1, 2, 3, 4 ] == [ 4, 3, 2, 1 ]
            , myReverse [ 2, 1 ] == [ 1, 2 ]
            , myReverse [ 1 ] == [ 1 ]
            , myReverse [] == []
            , myReverse [ 'a', 'b', 'c' ] == [ 'c', 'b', 'a' ]
            ]
