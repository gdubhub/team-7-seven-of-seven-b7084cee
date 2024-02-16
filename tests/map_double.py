from levelup.maps import GameMap
from levelup.position import position
from levelup.direction import Direction

class MapDouble (GameMap):

    STUBBED_X = 3
    STUBBED_Y = 4

    def calculate_new_position(self, current_position: position, direction: Direction) -> position:
        return position(self.STUBBED_X, self.STUBBED_Y)
