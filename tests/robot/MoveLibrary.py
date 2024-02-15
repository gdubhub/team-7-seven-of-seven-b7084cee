from levelup.controller import GameController
from levelup.controller import Direction

class MoveLibrary:
    start_x: int
    start_y: int

    controller = GameController()

    def initialize_character_xposition_with(self, startingX):
        self.start_x = startingX

    def initialize_character_yposition_with(self, startingY):
        self.start_y= startingY

    def move_in_direction(self, direction):
        self.controller.set_character_position((self.startingX, self.startingY))
        self.controller.move(Direction[direction])
        
    def character_xposition_should_be(self, expected):
        end_x = self.controller.status.current_position[0]
        assert end_x == expected, f"Expected: {expected}, Actual: {end_x}"

    def character_yposition_should_be(self, expected):
        end_y = self.controller.status.current_position[1]
        assert end_y == expected, f"Expected: {expected}, Actual: {end_y}"
        