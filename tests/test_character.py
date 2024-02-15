from unittest import TestCase
from unittest.mock import MagicMock, create_autospec
from levelup.character import Character

class TestCharacter(TestCase):
    def test_init(self):
        testObj = Character()
        assert testObj.name != None

    def  test_init(self):
        testObj = Character("Matt")
        assert testObj.name == "Matt"

    def test_enterMap(self):
        testObj = Character.enterMap()
        assert testObj.currentPosition != None

        
