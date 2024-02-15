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
Move N from Edge19          1           9           NORTH       1       9
Move N from Edge29          2           9           NORTH       2       9
Move N from Edge39          3           9           NORTH       3       9
Move N from Edge49          4           9           NORTH       4       9
Move N from Edge59          5           9           NORTH       5       9
Move N from Edge69          6           9           NORTH       6       9
Move N from Edge79          7           9           NORTH       7       9
Move N from Edge89          8           9           NORTH       8       9
Move S from Edge10          1           0           SOUTH       1       0
Move S from Edge20          2           0           SOUTH       2       0
Move S from Edge30          3           0           SOUTH       3       0
Move S from Edge40          4           0           SOUTH       4       0
Move S from Edge50          5           0           SOUTH       5       0
Move S from Edge60          6           0           SOUTH       6       0
Move S from Edge70          7           0           SOUTH       7       0
Move S from Edge80          8           0           SOUTH       8       0
Move S from Edge90          9           0           SOUTH       9       0
Move E from Edge01          0           1           EAST        0       1
Move E from Edge02          0           2           EAST        0       2
Move E from Edge03          0           3           EAST        0       3
Move E from Edge04          0           4           EAST        0       4
Move E from Edge05          0           5           EAST        0       5
Move E from Edge06          0           6           EAST        0       6
Move E from Edge07          0           7           EAST        0       7
Move E from Edge08          0           8           EAST        0       8
Move W from Edge91          9           1           WEST        9       1
Move W from Edge92          9           2           WEST        9       2
Move W from Edge93          9           3           WEST        9       3
Move W from Edge94          9           4           WEST        9       4
Move W from Edge95          9           5           WEST        9       5
Move W from Edge96          9           6           WEST        9       6
Move W from Edge97          9           7           WEST        9       7
Move W from Edge98          9           8           WEST        9       8
*** Keywords ***
Move character
    [Arguments]     ${startingX}    ${startingY}    ${direction}    ${endingX}  ${endingY}
    Initialize character xposition with     ${startingX}
    Initialize character yposition with     ${startingY}
    Move in direction                       ${direction}
    Character xposition should be           ${endingX}
    Character yposition should be           ${endingY}
    