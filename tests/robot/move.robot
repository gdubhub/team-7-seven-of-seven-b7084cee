*** Settings ***
Documentation
...     I want to move my character.  If they attempt to move past a boundary, the move results in no change to prosition.
...     http://arcbotics.com/wp-content/uploads/2015/12/sparki-driver-icon.png
Test Template   Move character
Library         MoveLibrary.py

*** Test Cases ***          StartingX   StartingY   Direction   EndingX EndingY
Move in middle of board     5           5           NORTH       5       6
Move on edge of board       0           5           WEST        0       5
Move S from SE corner       9           0           SOUTH       9       0
Move E from SE corner       9           0           EAST        9       0
Move N from NE corner       9           9           NORTH       9       9
Move E from NE corner       9           9           EAST        9       9
Move N from NW corner       0           9           NORTH       0       9
Move W from NW corner       0           9           WEST        0       9
Move S from SW corner       0           0           SOUTH       0       0
Move W from SW corner       0           0           WEST        0       0
Move N from W Edge          0           5           NORTH       0       6
*** Keywords ***
Move character
    [Arguments]     ${startingX}    ${startingY}    ${direction}    ${endingX}  ${endingY}
    Initialize character xposition with     ${startingX}
    Initialize character yposition with     ${startingY}
    Move in direction                       ${direction}
    Character xposition should be           ${endingX}
    Character yposition should be           ${endingY}

