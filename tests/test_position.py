from unittest import TestCase
from unittest.mock import MagicMock, create_autospec
from levelup.position import position

# THIS IS AN EXAMPLE UNIT TEST. 
# All the unit tests for the Game Controller should go here
# Unit tests for other classes should be in their own .py files (like test_character.py)
class TestPosition(TestCase):
    def test_init(self):
        testObj = position()
        assert testObj.xCoordinate != None
        assert testObj.yCoordinate != None
