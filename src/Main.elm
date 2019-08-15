module Main exposing (main)

import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Html exposing (..)


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
                [ h2 [] [ text "Experience" ]
                , experienceBlock "Software Engineer at Indeed" "Mar 2019 -"
                , experienceBlock "Software Engineer at SoundHound Inc." "Dec 2017 - Feb 2019"
                , experienceBlock "Software Engineer at Recruit Communications Co., Ltd." "Apr 2016 - Nov 2017"
                , experienceBlock "Software Engineer at National Institute of Informatics" "Oct 2015 - Mar 2016"
                ]
            ]
        , Grid.row []
            [ Grid.col []
                [ h2 [] [ text "Educaton" ]
                , experienceBlock "Bachelar of Science, University of Tokyo" "Apr 2010 - Mar 2014"
                ]
            ]
        ]


experienceBlock : String -> String -> Html msg
experienceBlock title duration =
    div [] [ h5 [] [ text title ], p [] [ text duration ] ]
