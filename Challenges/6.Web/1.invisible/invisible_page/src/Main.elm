module Main exposing (main)

import Browser
import Html exposing (Html, button, div, img, p, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Bool


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
    div
        [ style "background" "linear-gradient(90deg, #00C9FF 0%, #92FE9D 100%)"
        , style "width" "100vw"
        , style "height" "100vh"
        , style "display" "flex"
        , style "flex-direction" "column"
        , style "justify-content" "center"
        , style "align-items" "center"
        ]
        [ div
            [ style "min-width" "50%"
            , style "background" "aliceblue"
            , style "min-height" "50%"
            , style "border-radius" "16px"
            , style "display" "flex"
            , style "flex-direction" "column"
            , style "justify-content" "center"
            , style "align-items" "center"
            ]
            [ button
                [ onClick Toggle
                , style "color" "#fff"
                , style "background" "#ed3330"
                , style "border-radius" "5px"
                , style "border" "none"
                , style "cursor" "pointer"
                , style "padding" "12px 24px"
                , style "margin-top" "12px"
                , style "-webkit-box-shadow" "0px 5px 40px -10px rgba(0,0,0,0.57)"
                , style "-moz-box-shadow" "0px 5px 40px -10px rgba(0,0,0,0.57)"
                , style "box-shadow" "5px 40px -10px rgba(0,0,0,0.57)"
                ]
                [ text "Ten tu bandera" ]
            , htmlIf
                (div []
                    [ img
                        [ style "position" "relative"
                        , style "margin-top" "12px"
                        , src "https://media.giphy.com/media/5kq0GCjHA8Rwc/giphy.gif"
                        ]
                        []
                    , p
                        [ style "position" "absolute"
                        , style "top" "50%"
                        , style "left" "50%"
                        , style "transform" "translateX(-50%) translateY(-50%)"
                        , style "z-index" "-2"
                        ]
                        [ text "mblue{N3v3r_g0nna_g1v3_u_uP!}" ]
                    ]
                )
                model
            ]
        ]
