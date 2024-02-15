from unittest import TestCase
from unittest.mock import MagicMock, create_autospec
from levelup.position import position

class TestPosition(TestCase):
    def test_init(self):
        testObj = position()
        assert testObj.xCoordinate != None
        assert testObj.yCoordinate != None
