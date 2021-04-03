import UIKit

// Explaining inout keyword:

var x = 4

func makeDouble(num: inout Int){
    
    num *= 2
}

makeDouble(num: &x)
debugPrint(x)

func swapTwoInts(_ a:inout Int, _ b: inout Int){
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


// Computed Variables and Computed Properties

var variableName : someType {
    
    get {
        //statements
    }
    set (SetterName){
        // statments
    }
}
