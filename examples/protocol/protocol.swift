
//screenControl protocol
protocol screenControl {
    var brightness:Int { get }
    
    func increaseBrightness()->Bool
    func decreaseBrightness()->Bool
}

//rotatableScreenControl protocol inheriting screenControl protocol
protocol rotatableScreenControl: screenControl {
    var rotationAngle:Int { get }
    
    func rotateRight()->Bool
    func rotateLeft()->Bool
}

class Screen: rotatableScreenControl
{
    var brightness:Int
    var rotationAngle:Int
    
    init()
    {
        brightness = 0
        rotationAngle = 0
    }
    
    func increaseBrightness()->Bool
    {
        brightness++
        print("increaseBrightness: " + String(brightness))
        return true;
    }
    
    func decreaseBrightness()->Bool
    {
        brightness--
        print("decreaseBrightness: " + String(brightness))
        return true;
    }
    
    func rotateRight()->Bool
    {
        rotationAngle+=90
        print("rotateRight: " + String(rotationAngle))
        return true;
    }
    
    func rotateLeft()->Bool
    {
        rotationAngle-=90
        print("rotateLeft: " + String(rotationAngle))
        return true;
    }
}

var productScreenControl:rotatableScreenControl=Screen()

productScreenControl.increaseBrightness()
productScreenControl.increaseBrightness()
productScreenControl.increaseBrightness()
print(productScreenControl.brightness)

productScreenControl.rotateRight()
productScreenControl.rotateRight()
productScreenControl.rotateRight()
print(productScreenControl.rotationAngle)


