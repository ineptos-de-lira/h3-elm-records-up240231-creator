module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 float1 float2 float3 =
    float1 + float2 + float3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


type alias ProgrammingLanguage =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languageNames : List ProgrammingLanguage -> List String
languageNames languages =
    List.map .name languages


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents users =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        users


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "MacBook Pro"
    , brand = "Apple"
    , screenSize = "14 Pulgadas"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
