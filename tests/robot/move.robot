*** Settings ***
Documentation
...     I want to move my character.  If they attempt to move past a boundary, the move results in no change to prosition.
...     http://arcbotics.com/wp-content/uploads/2015/12/sparki-driver-icon.png
Test Template   Move character
Library         MoveLibrary.py

*** Test Cases ***          StartingX     StartingY     StartingMoveCount     Direction     EndingX     EndingY     EndingMoveCount
Move in middle of board     5               5           11                    NORTH         5           6           12
Move on edge of board       0               5           12                    WEST          0           5           13        
Move S from SE corner       9               0           13                    SOUTH         9           0           14         
Move E from SE corner       9               0           14                    EAST          9           0           15             
Move N from NE corner       9               9           15                    NORTH         9           9           16               
Move E from NE corner       9               9           16                    EAST          9           9           17             
Move N from NW corner       0               9           17                    NORTH         0           9           18           
Move W from NW corner       0               9           18                    WEST          0           9           19
Move S from SW corner       0               0           19                    SOUTH         0           0           20
Move W from SW corner       0               0           20                    WEST          0           0           21
Move N from W Edge          0               5           21                    NORTH         0           6           22
Move N from Edge19          1               9           22                    NORTH         1           9           23
Move N from Edge29          2               9           23                    NORTH         2           9           24
Move N from Edge39          3               9           24                    NORTH         3           9           25
Move N from Edge49          4               9           25                    NORTH         4           9           26
Move N from Edge59          5               9           26                    NORTH         5           9           27
Move N from Edge69          6               9           27                    NORTH         6           9           28
Move N from Edge79          7               9           28                    NORTH         7           9           29
Move N from Edge89          8               9           29                    NORTH         8           9           30
Move S from Edge10          1               0           30                    SOUTH         1           0           31
Move S from Edge20          2               0           31                    SOUTH         2           0           32
Move S from Edge30          3               0           32                    SOUTH         3           0           33
Move S from Edge40          4               0           33                    SOUTH         4           0           34
Move S from Edge50          5               0           34                    SOUTH         5           0           35
Move S from Edge60          6               0           35                    SOUTH         6           0           36
Move S from Edge70          7               0           36                    SOUTH         7           0           37
Move S from Edge80          8               0           37                    SOUTH         8           0           38
Move S from Edge90          9               0           38                    SOUTH         9           0           39
Move E from Edge01          0               1           39                    EAST          0           1           40
Move E from Edge02          0               2           40                    EAST          0           2           41
Move E from Edge03          0               3           41                    EAST          0           3           42
Move E from Edge04          0               4           42                    EAST          0           4           43
Move E from Edge05          0               5           43                    EAST          0           5           44
Move E from Edge06          0               6           44                    EAST          0           6           45
Move E from Edge07          0               7           45                    EAST          0           7           46
Move E from Edge08          0               8           46                    AST           0           8           47    
Move W from Edge91          9               1           47                    WEST          9           1           48
Move W from Edge92          9               2           48                    WEST          9           2           49
Move W from Edge93          9               3           49                    WEST          9           3           50
Move W from Edge94          9               4           50                    WEST          9           4           51
Move W from Edge95          9               5           51                    WEST          9           5           52
Move W from Edge96          9               6           52                    WEST          9           6           53
Move W from Edge97          9               7           53                    WEST          9           7           54
Move W from Edge98          9               8           54                    WEST          9           8           55


*** Keywords ***
Move character
    [Arguments]    ${startingX}    ${startingY}    ${startingMoveCount}    ${direction}    ${endingX}    ${endingY}    ${endingMoveCount}
    Initialize character xposition with  ${startingX}
    Initialize character yposition with  ${startingY}
    Initialize character moveCount with  ${startingMoveCount}
    Move in direction                    ${direction}
    Character xposition should be        ${endingX}
    Character yposition should be        ${endingY}
    Character moveCount should be        ${endingMoveCount}