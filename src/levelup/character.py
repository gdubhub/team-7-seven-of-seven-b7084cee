from levelup.position import position
from levelup.direction import Direction
from levelup.maps import GameMap

DEFAULT_CHARACTER_NAME = "Character"

class Character:
    # In python, we don't use getters. So no getPosition or getName for this class
    name = ""
    current_position :position = position(-100,-100)
    map = GameMap(10,10,(5,5))

    # Since python doesn't do method overloading, this is how we support a constructor with optional parameters
    def __init__(self, character_name=DEFAULT_CHARACTER_NAME):
        if character_name.strip() == '':
            self.name = DEFAULT_CHARACTER_NAME
        else:
            self.name = character_name

    def move(self, direction :Direction) -> None:
        self.current_position = self.map.calculate_new_position(
            self.current_position, direction)
    
    def enter_map(self, map):
        self.map = map
        self.current_position = self.map.starting_position