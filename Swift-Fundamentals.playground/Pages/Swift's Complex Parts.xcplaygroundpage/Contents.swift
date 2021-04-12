import SwiftUI
import UIKit
import Foundation
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
//: closures:
let sayHello = { print("Hello") }
sayHello()

let multiply = { (_ value1: Int, _ value2: Int) -> Int in
    return value1 * value2
}
multiply(10, 98)


let join = { (_ str1: String, _ str2: String) -> String in str1 + str2 }
join("Hello", "Swift")
let join2: (String, String) -> String = { $0 + $1 }
join2("Hello", "SwiftUI")


func function1() -> () -> Int {
    let number = 0
    
    func function2() -> Int {
        return number + 10
    }
    
    return function2
}
let myClosure = function1()
myClosure()
//: # Basics of OOP
class BankAccount {
    var accountNumber: Int
    var accountBalance: Float
    var fees: Float = 75.00
    
    var balanceLessFees: Float {
        get {
            return accountBalance - fees
        }
        set(newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBalance = balance
    }
    
    func displayBalance() {
        print("Number: \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    
    class func getMaxBalance() -> Float {
        return 100_000.00
    }
}
var account1 = BankAccount(number: 45678987, balance: 75_500.00)
print(BankAccount.getMaxBalance())
account1.displayBalance()
account1.balanceLessFees = 12_900.00
account1.accountBalance
account1.displayBalance()
print("\n\n\n")
//: protocols:
protocol MessageBuilder {
    var name: String { get }
    
    func buildMessage() -> String
}
class MyClass: MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func buildMessage() -> String {
        return "Hello, \(name)"
    }
}
//: opaque return types:
func doubleFunc1(value: Int) -> some Equatable {
    return value * 2
}
func doubleFunc2(value: String) -> some Equatable {
    return value + value
}
//: # Subclasses and Extensions
//: subclasses:
class SavingsAccount: BankAccount {
    var interestRate: Float
    
    init(number: Int, balance: Float, rate: Float) {
        interestRate = rate
        super.init(number: number, balance: balance)
    }
    
    override func displayBalance() {
        super.displayBalance()
        print("Prevailing interest rate is \(interestRate)")
    }
    
    func calculateInterest() -> Float {
        return accountBalance * interestRate
    }
}
let savings1 = SavingsAccount(number: 12345, balance: 975_000, rate: 0.05)
savings1.displayBalance()
print(savings1.calculateInterest())
print("\n")
//: extensions:
extension Double {
    var squared: Double {
        return self * self
    }
    
    var cubed: Double {
        return self * self * self
    }
}
let number1: Double = 3.0
print(number1.squared)
print(2.0.cubed)
print("\n")
//: # Structures and Enumerations
//: structures:
struct SampleStruct {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() -> String {
        return "Hello \(name)"
    }
}
let myStruct1 = SampleStruct(name: "Tim")
var myStruct2 = myStruct1
myStruct2.name = "Phill"
print(myStruct1.name)
print(myStruct2.name)

class SampleClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() -> String {
        return "Hello \(name)"
    }
}
let myClass1 = SampleClass(name: "Ive")
var myClass2 = myClass1
myClass2.name = "Craig"
print(myClass1.name)
print(myClass2.name)
//: enumerations:
enum Temperature {
    case cold(centigrades: Int)
    case warm
    case hot
}

func displayTempInfo(temp: Temperature) {
    switch temp {
        case .cold(let centigrades) where centigrades <= 0:
            print("Ice warning: \(centigrades) degrees")
        case .cold:
            print("It is cold but not freezing")
        case .warm:
            print("It is warm")
        case .hot:
            print("It is hot")
    }
}
var enum1 = Temperature.cold(centigrades: -12)
displayTempInfo(temp: enum1)
print("\n")
//: # Property Wrappers
@propertyWrapper
struct FixCase {
    private var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}
var contact = Contact(name: "Steve", city: "San Francisco", country: "United States")
print("\(contact.name), \(contact.city), \(contact.country)")

@propertyWrapper
struct MinMaxVal<V: Comparable> {
    var value: V
    let max: V
    let min: V
    
    var wrappedValue: V {
        get { value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
    
    init(wrappedValue: V, min: V, max: V) {
        value = wrappedValue
        self.max = max
        self.min = min
    }
}
struct Demo {
    @MinMaxVal(min: 50, max: 200) var value: Int = 0
}
struct Demo2 {
    @MinMaxVal(min: "A", max: "F") var value: String = ""
}
struct Demo3 {
    @MinMaxVal(min: Date(), max: Calendar.current.date(byAdding: .month, value: 1, to: Date())!) var value: Date = Date()
}
var demo = Demo()
var demo2 = Demo2()
var demo3 = Demo3()
demo.value = 40
demo2.value = "F"
demo3.value = Calendar.current.date(byAdding: .day, value: 5, to: Date())!
print(demo.value)
print(demo2.value)
print(demo3.value)
print("\n")
//: # Arrays and Dictionaries
//: arrays:
var myArray: [String] = [String]()
myArray = ["Pine", "Oak", "Yew"]
myArray[1] = "Redwood"
print(myArray.shuffled())
print(myArray.randomElement()!)
myArray.append("Oak")
myArray += ["Maple", "Birch"]
print(myArray)
myArray.remove(at: 4)
myArray.insert("Maple", at: 0)
print(myArray)

//for tree in myArray {
//    print(tree)
//}
myArray.forEach { tree in
    print(tree)
}
var mixedArray: [Any] = ["A string", 12, 90.34, true]
//: dictionaries:
let keys = ["100-432112", "200-532874", "202-546549", "104-109834"]
let values = ["Wind in the Willows", "Tale of Two Cities", "Sense and Sensibility", "Shutter Island"]

var bookDict: [String: String] = Dictionary(uniqueKeysWithValues: zip(keys, values))

bookDict.updateValue("The Ruins", forKey: "200-532874")
bookDict["300-898871"] = "The Overlook"
bookDict.removeValue(forKey: "202-546549")

for (isbn, title) in bookDict {
    print("ISBN: \(isbn) Title: \(title)")
}
//: # Error Handling
enum FileTransferError: Error {
    case noConnection
    case lowBandwidth
    case fileNotFound
}

let connectionOK = true
let connectionSpeed = 30.0
let fileFound = false

func fileTransfer() throws {
    
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed >= 30 else {
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
}

func sendFile() -> String {
    
    do {
        try fileTransfer()
    } catch FileTransferError.noConnection {
        return "No network connection"
    } catch FileTransferError.lowBandwidth {
        return "File transfer speed too low"
    } catch FileTransferError.fileNotFound {
        return "File not found"
    } catch {
        return "Unknown error"
    }
    
    return "Successfull transfer"
}

sendFile()
