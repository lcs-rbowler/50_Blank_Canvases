//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Create a starting point for travelling through Perlin noise space
var start = 0.0

// Create Perlin noise generator
let p = PerlinGenerator()

for x in stride(from: 0, through: 400, by: 1) {
    // Move through Perlin noise space
    start += 0.01 // larger means more variation
                 // smaller means less variation
    
    // Get Perlin noise (gives is a random number between -1 and 1)
    let randomValue = p.perlinNoise(x: start)
    
    // Convert to a range between 0 and 100
    let height = map(value: randomValue, fromLower: -1, fromUpper: 1, toLower: 0, toUpper: 100)
    
    // Make the height an integer
    let toY = Int(height)
    
    // Set the Colour
    canvas.lineColor = Color(hue: 0, saturation: 100, brightness: toY, alpha: 100)
    
    // Draw the line
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: toY)
}




/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

