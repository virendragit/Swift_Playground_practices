import UIKit

func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoString(_ a: inout String, _ b: inout String){
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoDouble(_ a: inout Double, _ b: inout Double){
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 7
var anotherInt = 103
swap(&someInt, &anotherInt)

print("someInt is now \(someInt) , and anotherInt is now \(anotherInt)")


// Generic function

func swapTwoValue<T> (_ a: inout T, _ b: inout T){
    let temporaryA = a
    a = b
    b = temporaryA
}

var someValue = "Hi"
var anotherValue = "Hello"

swap(&someValue, &anotherValue)

print("Hi is now \(someValue) , and Hello is now \(anotherValue)")

// Non Generic stack
struct IntStack {
    var items = [Int]()
    
    mutating func push(_ item : Int){
        items.append(item)
    }
    
    mutating func pop() -> Int{
        items.removeLast()
    }
}

// Generic stack
struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element{
        items.removeLast()
    }
    
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")

let fromTheTop = stackOfStrings.pop()
print(stackOfStrings)

extension Stack where Element: Equatable{
    var topItem : Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
    
    func isTop(_ item: Element) -> Bool{
        guard let topItem = items.last else {
            return false
        }
        
        return topItem == item
    }
}

stackOfStrings.push("Viren")
if let topItem = stackOfStrings.topItem{
    print("The top item of stack is \(topItem)")
}


//Type Constraints in action

func findIndex(ofString valueToFind: String, in array :[String]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind{
        return index
    }
    }
    
    return nil
}

let strings = ["cat", "Dog", "llama", "parakeet", "terrapin"]
if let foundIndex = findIndex(ofString: "terrapin", in: strings){
    print("The index of llama is \(foundIndex)")
}

// Generic method for the above example
func findIndex<T : Equatable>(of valueToFind: T, in array : [T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind{
            return index
        }
    }
    
    return nil
}

let anotherStrings = ["mark", "Smith" ,"collin" ,"woods"]
if let foundIdx = findIndex(of: "Smith", in: anotherStrings){
print("The index of mark is \(foundIdx)")
}

let doubleIndex = findIndex(of: 0.25, in: [3.12,0.1,0.25])

let stringIndex = findIndex(of: "Anadi", in: ["mike","malcolm","Anadi"])


// checking generics isTop function
if stackOfStrings.isTop("viren"){
    print("Top element is viren")
}else {
    print("Top element is something else")
}


// 1. Associated Types in action
// 2. Adding Constrains to an Associated Type
protocol Container {
    associatedtype Item : Equatable
    mutating func append (_ item: Item)
    var count : Int { get }
    subscript (i: Int) -> Item { get }
}






