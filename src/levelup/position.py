class position:
    default_yCoordinate = 2
    default_xCoordinate = 4
    
    def __init__(self, xCoordinate = default_xCoordinate):
        self.xCoordinate = xCoordinate
    def __init__(self,yCoordinate = default_yCoordinate):
        self.yCoordinate = yCoordinate
    def __init__(self, xyCoordinate = (default_xCoordinate,default_yCoordinate)):
        self.xyCoordinate = xyCoordinate

        