import UIKit

// If any Object is not getting used it will be remove as per ARC .. Before removing from the memory it will call deinit method
// If any object is not getting used at all then it will release it from memory

class People{
    
    var name: String
    
    init(_name : String) {
        debugPrint("init method of People called")
        name = _name
    }
    
    func printName(){
        debugPrint("name is \(name)")
    }
    
    deinit {
        debugPrint("Deinit called for the people")
    }
}

var objPeople1 : People?
var objPeople2 : People?

/*
if (1 == 1){

let objPerson = People(_name: "someName")
objPeople1 = objPerson
objPeople2 = objPerson
objPerson.printName()
}

objPeople1 = nil
objPeople2 = nil*/


class Person{
    
    var name: String
    weak var job : Job?
    
    init(_name : String) {
        debugPrint("init method of person called")
        name = _name
    }
    
    func printName(){
        debugPrint("name is \(name)")
    }
    
    deinit {
        debugPrint("Deinit called for the person")
    }
}

class Job{
    
    var jobDescription : String
    weak var person : Person?
    
    init(_jobDescription: String) {
      debugPrint("Job description of job called")
      jobDescription = _jobDescription
    }
    
    deinit {
      debugPrint("Deinit called for the job class")
    }
    
}

if (1 == 1){
    
let objPerson = Person(_name: "Viren")
let objJob = Job(_jobDescription: "Efficient swift programmer")
    
    objPerson.job = objJob
    objJob.person = objPerson
}
