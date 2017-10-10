//: [Previous](@previous) / [Next](@next)
//: # Iteration
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: NOTE: Parts of this page are adapted from [The Swift Programming Language Guide - Control Flow](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120).
/*:
 ## For-In Loops
 ### Basic For-In Loops
 You use the *for-in* loop to iterate over ranges of numbers.
 Here is a simple loop that adds all the numbers from 1 to 4.
 */
let canvas = Canvas(width: 300, height: 500)

//Make a loop to draw 10 rectangle with increading brightness

for i in stride(from: 0, through: 500, by: 50) {
    i
    //Changes Colour
    canvas.fillColor = Color(hue: 240, saturation: 100, brightness: i/5, alpha: 100)
    canvas.drawRectangle(bottomLeftX: i, bottomLeftY: i, width: canvas.width, height: 250)
    canvas.fillColor = Color(hue: 120, saturation: 100, brightness: i/5, alpha: 100)
    canvas.drawRectangle(bottomLeftX: -i, bottomLeftY: -i, width: canvas.width, height: 250)
    canvas.fillColor = Color(hue: 0, saturation: 100, brightness: i/5, alpha: 100)
    canvas.drawRectangle(bottomLeftX: -i, bottomLeftY: i, width: canvas.width, height: 250)
    canvas.fillColor = Color(hue: 45, saturation: 100, brightness: i/5, alpha: 100)
    canvas.drawRectangle(bottomLeftX: i, bottomLeftY: -i, width: canvas.width, height: 250)

}

for i in stride(from: 0, through: 500, by: 50) {
    canvas.defaultLineWidth = 5
    canvas.lineColor = Color.init(hue: i, saturation: 100, brightness: i/5, alpha: 100)
    canvas.drawLine(fromX: i, fromY: 0, toX: 300, toY: i)
     canvas.drawLine(fromX: 0, fromY: i, toX: i, toY: 300)
     canvas.drawLine(fromX: 0, fromY: 300, toX: i, toY: i)
     canvas.drawLine(fromX: 300, fromY: i, toX: i, toY: 0
    
    
    
    
    
    
    
    
    )
}


/*:
 ### Skipping values in a range
 The *stride* function can be combined with a *for-in* loop to move through a range of numbers, while also skipping some values.
 
 This is a *very powerful* concept *(hint, hint)*.
 
 For example, here how to use this type of loop to create a ladder image.
 */
// Create canvas
let anvas = Canvas(width: 300, height: 400)

// Line width
canvas.defaultLineWidth = 5

// Draw the "rungs" of a ladder
for y in stride(from: 0, through: 400, by: 50) {
    
    y
    
    // Draw each rung
    canvas.drawLine(fromX: 100, fromY: y, toX: 200, toY: y)
    
    canvas
    
}
/*:
 ### Counting backwards
 You can use a *for-in* loop with the *stride* function to count backwards as well.
 */
// Countdown, then blast off
for value in stride(from: 10, through: 0, by: -1) {
    print(value)
}
print("Blast off!")
//: **NOTE:** Output will show up in the Debug area.
//:
//: If you don't see this, press **Command-Shift-Y**.
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
