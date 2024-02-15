from unittest import TestCase
from levelup.maps import GameMap

class TestMap(TestCase):
    def test_init(self):
        testmap = GameMap(10,10,(5,5))
        assert testmap.length != None
        assert testmap.width != None
        assert testmap.starting_position != None
