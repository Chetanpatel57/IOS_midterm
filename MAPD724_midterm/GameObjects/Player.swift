import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the top boundary
        if(position.y <= -320)
        {
            position.y = -320
        }
        
        // constrain the player on the bottom boundary
        if(position.y >= 320)
        {
            position.y = 320
        }
    }
    
    override func Reset()
    {
        position.x = -640
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
