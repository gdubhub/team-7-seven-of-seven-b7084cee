import logging
from dataclasses import dataclass
from enum import Enum

# TODO: ADD THINGS YOU NEED FOR STATUS
class GameStatus:
    running:bool = False
    character_name: str = "Character"
    current_position: tuple = (-100,-100)
    move_count: int = 0

    def set_character_position(self, xycoordinates: tuple) -> None:
        print("Set character position state for testing")
        # TODO: IMPLEMENT THIS

    def __str__(self) -> str:
        return f"{self.character_name} moved {self.move_count} times."
    

class Direction(Enum):
    NORTH = "n"
    SOUTH = "s"
    EAST = "e"
    WEST = "w"

class GameController:
    status: GameStatus

    def __init__(self):
        self.status = GameStatus()

    def start_game(self):
        pass

    def create_character(self, character_name: str) -> None:
        pass

    def move(self, direction: Direction) -> None:
        pass

