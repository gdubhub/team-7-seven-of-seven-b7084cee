from unittest import TestCase
from levelup.maps import GameMap


class TestMap(TestCase):
    def test_init(self):
        testmap = GameMap(10,10,(5,5))
        assert testmap.length != None
        assert testmap.width != None
        assert testmap.starting_position != None
    
    def test_calculate_position_1(self):
        position = GameMap.calculate_position((5,5), "NORTH")
        assert position == (5,6)

    def test_calculate_position_2(self):
        position = GameMap.calculate_position((5,5), "SOUTH")
        assert position == (5,4)

    def test_calculate_position_3(self):
        position = GameMap.calculate_position((5,5), "EAST")
        assert position == (6,5)
        
    def test_calculate_position_4(self):
        position = GameMap.calculate_position((5,5), "WEST")
        assert position == (4,5)
        
