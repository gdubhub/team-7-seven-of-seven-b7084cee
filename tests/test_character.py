from unittest import TestCase
from unittest.mock import MagicMock, create_autospec
from levelup.character import Character
from tests.stub_maps import GameMap

class TestCharacter(TestCase):
    def test_init(self):
        testObj = Character()
        assert testObj.name != None

    def  test_init(self):
        testObj = Character("Matt")
        assert testObj.name == "Matt"

    def test_enter_map_sets_map_and_updates_position(self):
        testobj = Character()
        stubbed_map = GameMap()
        testobj.enterMap(stubbed_map)
        self.assertEqual(stubbed_map, testobj.map)
        self.assertEqual(testobj.currentPosition, stubbed_map.startingPosition)

        
