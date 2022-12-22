import Foundation


enum animals {
    case dog
    case cat
    case rabbit
}

enum Animals {
    case dog, cat, rabbit
}


let cat = Animals.cat

cat
let dog = animals.dog

dog


if cat == Animals.dog {
    "You have a dog"
} else if cat == Animals.cat {
    "You have a cat"
} else {
    "There is something else"
}


//switch statement

switch cat {
case .dog:
    "This is a dog"
    break
case .cat:
    "This is a cat"
    break
case .rabbit:
    "This is a rabbit"
    break
default:
    "This is something else"
}

//passing value to a enum member
//associated values
enum Shortcut {
    case FileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist : String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path:
                URL(string: "www.apple.com")!
            )


//for comparing associated values enums we need to define quality operator
//for compare

//switch wwwApple {
//
//case .FileOrFolder(
//    path: let path,
//    name: let name
//):
//    <#code#>
//case .wwwUrl(
//    path: let path
//):
//    <#code#>
//case .song(
//    artist: let artist,
//    songName: let songName
//):
//    <#code#>
//}


//compare using if

if case let .wwwUrl(path) = wwwApple {
    path
}

//ignoring one or more param in associate values

let withoutYou = Shortcut.song(
    artist: "Sympony X",
    songName: "Wihtout You"
)

if case let .song( _, songName) = withoutYou {
    songName
}


enum Vehicle {
    case Car ( manufacturer: String, model: String)
    case Bike( manufacturer: String, year: Int)
    var manufacture: String {
        switch self{
        case let .car(manufacture, _),
            let .bike(manufacture, _)
            return manufacture;
        }
    }
}

let fortuner = Vehicle.Car(manufacturer: "toyota", model: "fortuner")

let hd = Vehicle.Bike(manufacturer: "Harley", year: 1987)


switch fortuner {
    
case let .Car(manufacturer,  _):
    manufacturer
case let .Bike( manufacturer, _):
    manufacturer
}


switch hd {
    case let .Car(manufacturer, _):
    manufacturer
case let .Bike(manufacture, _):
    manufacture
}


func getManufacturer(from vehicle: Vehicle) -> String {
    switch vehicle {
    case .Car(manufacturer: let manufacturer,_):
        return manufacturer
    case .Bike(manufacturer: let manufacturer, _):
        return manufacturer
    }
}


getManufacturer(from: hd)
getManufacturer(from: fortuner)

