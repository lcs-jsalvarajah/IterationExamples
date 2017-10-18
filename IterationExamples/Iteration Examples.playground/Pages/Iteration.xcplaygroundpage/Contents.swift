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
let canvas = Canvas(width: 300, height: 300)
var randam = random(from: 1, toButNotIncluding: 3)


for i in stride(from: 25, through: 275, by: 50) {
    canvas.drawEllipse(centreX: i, centreY: 275, width: 3, height: 3)
    canvas.drawEllipse(centreX: i, centreY: 225, width: 3, height: 3)
    canvas.drawEllipse(centreX: i, centreY: 175, width: 3, height: 3)
    canvas.drawEllipse(centreX: i, centreY: 225, width: 3, height: 3)
    canvas.drawEllipse(centreX: i, centreY: 175, width: 3, height: 3)
    canvas.drawEllipse(centreX: i, centreY: 125, width: 3, height: 3)
    canvas.drawEllipse(centreX: i, centreY: 75, width: 3, height: 3)
    canvas.drawEllipse(centreX: i, centreY: 25, width: 3, height: 3)
    canvas.fillColor = Color.init(hue: i, saturation: 100, brightness: 100, alpha: 100)
    
   
}

if randam == 1 {
    canvas.drawLine(fromX: 3, fromY: 50, toX: 75, toY: -75)
    

    
}

if randam == 2 {
    canvas.drawLine(fromX: 25, fromY: -25, toX: 100, toY: 75)
    
    
    
}






/*:
 ### Skipping values in a range
 The *stride* function can be combined with a *for-in* loop to move through a range of numbers, while also skipping some values.
 
 This is a *very powerful* concept *(hint, hint)*.
 
 For example, here how to use this type of loop to create a ladder image.
 */

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
