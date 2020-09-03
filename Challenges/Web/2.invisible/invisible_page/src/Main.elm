module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- MAIN
main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL

type alias Model = Bool

init : Model
init =
  False

-- UPDATE

type Msg
  = Toggle

update : Msg -> Model -> Model
update msg model =
  case msg of
    Toggle ->
      not model

htmlIf : Html msg -> Bool -> Html msg
htmlIf el cond =
    if cond then
        el
    else
        text ""

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Toggle ] [ text "toggle" ]
    , htmlIf (div [] [text "Conditionally drawn"]) model
    ]
