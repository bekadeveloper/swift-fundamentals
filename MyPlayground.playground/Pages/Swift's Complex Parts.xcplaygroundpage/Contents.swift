import SwiftUI
import UIKit
//:# Optionals
var index: Int?

index = 3

var treeArray = ["Oak", "Pine", "Yew", "Birch"]

//: forced unwrapping:
if index != nil {
    // index variable has a value assigned to it
    print(treeArray[index!])
} else {
    // index variable has no value assigned to it
    print("index does not contain a value")
}
//: optinal binding:
if let index = index {
    print(treeArray[index])
} else {
    print("index does not contain a value")
}
//: unwrapping multiple optionals:
var pet1, pet2: String?

pet1 = "Cat"
pet2 = "Dog"

if let firstPet = pet1, let secondPet = pet2 {
    print(firstPet)
    print(secondPet)
} else {
    print("insufficient pets")
}
//: implicitly unwrapped optionals:
var index2: Int! // optional is now implicitly unwrapped

index2 = 2

if index2 != nil {
    print(treeArray[index2])
} else {
    print("index does not contain a value")
}
//: # Type Casting and Type Checking
//: upcasting:
let myButton: UIButton = UIButton()
let myControl = myButton as UIControl
//: downcasting:
let myScrollView: UIScrollView = UIScrollView()

if let myTextView = myScrollView as? UITextView {
    print("Type cast to UITextView succeeded")
} else {
    print("Type cast to UITextView failed")
}
//: # Control Flow
//: The guard statement:
func multiplyByTen(value: Int?) {
    
    guard let number = value else {
        print("value is nil")
        return
    }
    
    print("\(number * 10)")
}
multiplyByTen(value: 10)
//: # Functions, Methods and Closures
//: functions:
func buildMessage(user name: String = "Customer", usercount count: Int) -> String {
    return "\(name), you are customer number \(count)"
}
let message = buildMessage(usercount: 56)
//: returning multiple values:
func sizeConverter(_ length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
    let yards = length * 0.0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    
    return (yards, centimeters, meters)
}
let lengthTuple = sizeConverter(20.0)
//: in-out parameters:
func doubleValue(_ value: inout Int) -> Int {
    value += value
    return value
}
var a = 45
doubleValue(&a)
print(a)
//: functions as parameters:
func inchesToFeet(_ inches: Float) -> Float {
    return inches * 0.083333
}
func inchesToYards(_ inches: Float) -> Float {
    return inches * 0.0277778
}
let toFeet = inchesToFeet
let toYards = inchesToYards

func outputConversion(_ converterFunc: (Float) -> Float, value: Float) {
    print("Result of conversion is \(converterFunc(value))")
}
outputConversion(toFeet, value: 10.0)
outputConversion(toYards, value: 10.0)

func decideFunc(_ feet: Bool) -> (Float) -> Float {
    return feet ? toFeet : toYards
}
decideFunc(false)
