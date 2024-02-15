from unittest import TestCase
from maps import GameMap

class TestMap(TestCase):
    def test_init(self):
        testmap = GameMap()
        assert GameMap.length != None
        assert GameMap.width != None
        assert GameMap.starting_position != None
