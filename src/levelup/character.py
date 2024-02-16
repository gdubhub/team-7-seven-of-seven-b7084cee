from maps import GameMap
from position import position

class Character:
    default_name = "Billy Bob"
    map = GameMap()

    def __init__(self,character_name = default_name):
        self.name = character_name

    def enterMap(self, map):
        self.map = map
        self.currentPosition = self.map.starting_position

