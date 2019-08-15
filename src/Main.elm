module Main exposing (main)

import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Html exposing (Html, a, div, h2, h5, p, text)
import Html.Attributes exposing (href)


main =
    Grid.container []
        [ CDN.stylesheet
        , Grid.row []
            [ Grid.col []
                [ h2 [] [ text "Kenkou Nakamura" ]
                , p [] [ text "I am a software engineer at Indeed." ]
                ]
            ]
        , Grid.row []
            [ Grid.col []
                [ h2 [] [ text "Software" ]
                , softwareBlock "AtCoder Problems" "https://kenkoooo.com/atcoder/"
                , softwareBlock "Competitive Programming Snippets in Rust" "https://github.com/kenkoooo/competitive-programming-rs"
                ]
            ]
        , Grid.row []
            [ Grid.col []
                [ h2 [] [ text "Experience" ]
                , experienceBlock "Software Engineer at Indeed" "Mar 2019 -"
                , experienceBlock "Software Engineer at SoundHound Inc." "Dec 2017 - Feb 2019"
                , experienceBlock "Software Engineer at Recruit Communications Co., Ltd." "Apr 2016 - Nov 2017"
                , experienceBlock "Software Engineer at National Institute of Informatics" "Oct 2015 - Mar 2016"
                ]
            ]
        , Grid.row []
            [ Grid.col []
                [ h2 [] [ text "Education" ]
                , experienceBlock "Bachelar of Science, University of Tokyo" "Apr 2010 - Mar 2014"
                ]
            ]
        ]


softwareBlock : String -> String -> Html msg
softwareBlock name link =
    h5 [] [ a [ href link ] [ text name ] ]


experienceBlock : String -> String -> Html msg
experienceBlock title duration =
    div [] [ h5 [] [ text title ], p [] [ text duration ] ]
