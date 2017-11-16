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
// Example of a function

func someFunction(firstParamterName : Int, secondParameterName : Int) {
    
    // In the function body (between the curly brackets firstParameterName and secondParameterName refer to the values provided when the function was called.
    print(firstParamterName)
    print("___")
    print(secondParameterName)
    print("===")
}

someFunction(firstParamterName: 5, secondParameterName: 7)

someFunction(firstParamterName: 15, secondParameterName: 10)

someFunction(firstParamterName: 69, secondParameterName: 666)


func drawPolygon(withSides : Int, sideLength : Int, startX : Int, startY : Int, lineWidth : Int) {
    
    // Make line width
    canvas.defaultLineWidth = lineWidth
    
    // Find interior angle
    let interior = (withSides - 2) * 180 / withSides
    
    // Find exterior angle
    let exterior = interior - 180
    
    // Move to start position
    canvas.translate(byX: startX, byY: startY)
    
    // Loop for number of sides
    for _ in 1...withSides {
        
        // Draw the line
        canvas.drawLine(fromX: 0, fromY: 0, toX: sideLength, toY: 0)
        
        // Translate to end of line
        canvas.translate(byX: sideLength, byY: 0)
        
        // Rotate
        canvas.rotate(by: Degrees(exterior))
    }
}


drawPolygon(withSides: 50, sideLength: 5, startX: 200, startY: 200, lineWidth: 5)







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

