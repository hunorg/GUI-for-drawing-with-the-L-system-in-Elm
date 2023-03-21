module Model exposing (Model, Symbol, init)

import Turtle exposing (Action(..))


type alias Model =
    { symbolAssignments : List Symbol
    , syntaxDisplay : Bool
    , rules : List ( Char, List Char )
    , selectedSymbol : String
    , selectedAction : Action
    , newRuleInput : String
    , angle : Float
    , stepSize : Float
    , fractionalStepSize : Float
    , axiom : String
    , iterations : Int
    , startingPoint : ( Float, Float )
    , startingAngle : Float
    , generatedSequence : List Char
    , drawnTurtle : Bool
    }



-- Represents a single symbol in the L-system, mapping a character to a corresponding action.


type alias Symbol =
    { character : String
    , action : Action
    }


init : Model
init =
    { symbolAssignments = 
        [ { character = "F", action = Move }
        , { character = "G", action = MoveFraction }
        , { character = "+", action = TurnLeft }
        , { character = "-", action = TurnRight }
        , { character = "[", action = Push }
        , { character = "]", action = Pop }
        , { character = "X", action = NoAction }
        ]
    , syntaxDisplay = False
    , rules = []
    , selectedSymbol = ""
    , selectedAction = Move
    , newRuleInput = ""
    , angle = 0
    , stepSize = 1
    , fractionalStepSize = 0.1
    , axiom = ""
    , iterations = 0
    , startingPoint = ( 700, 500 )
    , startingAngle =0
    , generatedSequence = []
    , drawnTurtle = False
    }

