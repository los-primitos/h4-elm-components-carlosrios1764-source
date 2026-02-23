module Helper exposing (..)

import Html exposing (Html, div, h1, h2, h3, h4, h5, h6, text, a)
import Html.Attributes exposing (href)

--Ejercicio 1
joinWords: String -> String -> String
joinWords word1 word2 =
    word1 ++ word2
--Ejercicio 2
isUpperChars: List Char -> List Bool
isUpperChars list=
    List.map Char.isUpper list

--Ejercicio 3

evalChars: List Char -> (Char->Bool) ->List Bool
evalChars list funTrans=
    List.map funTrans list

--Ejercicio 4
headers: String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]

hyperlink : String -> String -> Html msg
hyperlink url label =
    a [href url] [text label]