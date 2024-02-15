from stub_maps import GameMap
from stub_position import position

class Character:
    default_name = "Billy Bob"
    
    def __init__(self,character_name = default_name):
        self.name = character_name

    def enterMap():
        self.currentPosition = GameMap.startingPosition

