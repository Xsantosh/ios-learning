import Foundation



struct Person {
    let name : String
    let age : Int
}
//Custructor for structer are implicitly created by compiler

let me = Person(
        name: "Santosh",
        age: 23
        )

me.name
me.age


//custom constructor

struct Harddisk {
    let company : String
    let size : Int
    init(size:Int){ //Init work as default constructor [initializer]
        self.size = size
        self.company = "AData"
    }
}

let adata64 = Harddisk(size: 64)

adata64.company
adata64.size



//Computable property in structure

struct Person2 {
    let firstName : String
    let lastName : String
    var fullname : String { //computable property is like function and declared as variables var
        "\(firstName) \(lastName)"
    }
}

let name1 = Person2(firstName: "Foo", lastName: "Bar")

name1.lastName
name1.firstName
name1.fullname



//Create a mutable structure


struct Car {
    var currentSpeed : Int
    mutating  func drive (speed: Int) {
        "Driving"
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
//You can't to as the struct member is defined let
//immutableCar.drive(speed: 11)

var mutableCar = Car(currentSpeed: 10)
mutableCar.drive(speed: 14)




let copy = mutableCar

mutableCar.drive(speed: 50)
mutableCar.currentSpeed
copy.currentSpeed
