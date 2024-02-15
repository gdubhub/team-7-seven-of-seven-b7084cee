class position:
    default_yCoordinate = 2
    default_xCoordinate = 4
    
    def __init__(self, xCoordinate = default_xCoordinate, yCoordinate=default_yCoordinate):
        self.xCoordinate = xCoordinate
        self.yCoordinate = yCoordinate

    def __eq__(self,obj):
        if self.xCoordinate == obj.x and self.yCoordinate == obj.yCoordinate:
            return True
        else:
            return False 
        