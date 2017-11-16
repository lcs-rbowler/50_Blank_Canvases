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
// Step 1: Move to starting point

canvas.translate(byX: 75, byY: 75)
canvas.defaultLineWidth = 5

// Step 2: Draw a side and rotate
canvas.drawLine(fromX: 0, fromY: 0, toX: 200, toY: 0)
canvas.translate(byX: 200, byY: 0)
canvas.rotate(by: 90)

// Step 3: Draw a side and rotate
canvas.drawLine(fromX: 0, fromY: 0, toX: 200, toY: 0)
canvas.translate(byX: 200, byY: 0)
canvas.rotate(by: 90)

// Step 4: Draw a side and rotate
canvas.drawLine(fromX: 0, fromY: 0, toX: 200, toY: 0)
canvas.translate(byX: 200, byY: 0)
canvas.rotate(by: 90)

// Step 5: Draw a side and rotate
canvas.drawLine(fromX: 0, fromY: 0, toX: 200, toY: 0)
canvas.translate(byX: 200, byY: 0)
canvas.rotate(by: 90)

// Step 6: Draw tiny square inside big square with loop
for _ in 1...4 { // loops 4 times with no variable
    canvas.drawLine(fromX: 0, fromY: 0, toX: 100, toY: 0)
    canvas.translate(byX: 100, byY: 0)
    canvas.rotate(by: 90)
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

