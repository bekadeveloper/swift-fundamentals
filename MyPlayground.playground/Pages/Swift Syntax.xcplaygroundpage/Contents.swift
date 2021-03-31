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
let myButton: UIButton = UIButton()
let myControl = myButton as UIControl

