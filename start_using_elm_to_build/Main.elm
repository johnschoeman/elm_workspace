module Main exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (..)


-- Four Parts


model =
    { showFace = False }


type Msg
    = ShowFace


update msg model_ =
    case msg of
        ShowFace ->
            { model_ | showFace = True }


view model_ =
    div []
        [ h1 [] [ text "Face generator" ]
        , button [ onClick ShowFace ] [ text "Face me" ]
        , if model_.showFace then
            text "().()"
          else
            text ""
        ]


main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }
