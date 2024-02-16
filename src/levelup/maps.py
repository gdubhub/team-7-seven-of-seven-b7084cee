class GameMap:
    def __init__(self, width, length, starting_position):
        self.width = width
        self.length = length
        self.starting_position = starting_position
    
    def calculate_position(currentPosition, direction):
        if direction == "NORTH":
            position = (currentPosition[0], currentPosition[1] + 1)
        if direction == "SOUTH":
            position = (currentPosition[0], currentPosition[1] - 1)
        if direction == "EAST":
            position = (currentPosition[0] + 1, currentPosition[1])
        if direction == "WEST":
            position = (currentPosition[0] - 1, currentPosition[1])
        return position

    def isPositionValid(self, positionCoordiate):
        if positionCoordiate[0] < 0:
            result = False
        elif positionCoordiate[1] < 0:
            result = False
        elif positionCoordiate[0] > self.width - 1:
            result = False
        elif positionCoordiate[1] > self.length - 1:
            result = False
        else:
            result = True
        return result