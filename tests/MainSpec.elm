module MainSpec exposing (exampleProgramTest)

import Main
import ProgramTest exposing (clickButton, expectViewHas, start)
import Test exposing (Test, test)
import Test.Html.Selector exposing (class, text)


exampleProgramTest : Test
exampleProgramTest =
    test "cannot publish without a title" <|
        \() ->
            ProgramTest.createElement
                { init = Main.init
                , update = Main.update
                , view = Main.view
                }
                |> start ()
                |> clickButton "+1"
                |> clickButton "-1"
                |> clickButton "-1"
                |> expectViewHas
                    [ text "-1"
                    ]
