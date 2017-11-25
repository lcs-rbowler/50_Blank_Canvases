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
let canvas = Canvas(width: 400, height: 300)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Cabin Point
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
}

let cabin = Point(x: 6.0, y: 1.5)

// Defining Slope
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

// Defining Slope of a Line
struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0)
    var verticalIntercept : Double = 0.0
}
func getSlopeOfCabinRoad(from givenLine: Line) -> Slope {
    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1 )
}

// Create campsite road
var slopeOfCampsiteRoad = Slope(rise: -1, run: 2)
var campsiteRoad = Line(slope: slopeOfCampsiteRoad, verticalIntercept: 9.5)

// Get slope of cabin road
let cabinRoadSlope = getSlopeOfCabinRoad(from: campsiteRoad)

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

