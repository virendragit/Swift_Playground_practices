import UIKit

// To encapsulate common property and behaviours
//OOP way
class Creature {
    
    let name : String
    
    init(name : String) {
        self.name = name
    }
    
    func fight(){
        print("👊")
    }
}

class LandCreature: Creature{

    func walk (){
        print("🚶🏻‍♀️")
    }
    func run (){
        print("🏃🏻")
    }
}

class hellCreature : Creature{
    
    func walk (){
        print("🚶🏻‍♀️")
    }
    func run (){
        print("🏃🏻")
    }
    
    func burn (){
        print("🔥")
    }
    }

class SkyCreature: Creature{
    func fly(){
        print("🕊️")
    }
}

class Dragon: SkyCreature{
    
}
//hellCreature
let lucifer = hellCreature(name: "Lucifier")
lucifer.walk()
lucifer.run()
lucifer.fight()
lucifer.burn()

//skyCreature
let rebelliousPilot = SkyCreature(name: "Kanimoor")
rebelliousPilot.fly()
rebelliousPilot.fight()

//landCreature
let woolf = LandCreature(name: "woolfie")
woolf.run()
woolf.fight()
woolf.walk()

let dragon = Dragon(name: "wynfro")
dragon.fight()
dragon.fly()

// Protocol oriented Programming:::

protocol Running{
    func run()
}

extension Running{
    func run(){
        print("🏃🏻")
    }
}



