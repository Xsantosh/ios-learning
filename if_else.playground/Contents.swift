import Foundation

let myName = "Santosh"
let myAge = 23
let yourName = "Bandar"
let yourAge = 24

if myName == "Santosh" {
    "Your name is \(myName)"
}else {
    "Oops, you guessed wrong"
}

if myName == "Santosh" {
    "You guessed it correctly"
} else if myName == "Foo" {
    "Your name is Foo"
} else {
    "You are wrong"
}


if myName == "Santosh" && myAge == 23 {
    "your name is \(myName) and your age is \(myAge)"
} else {
    "You have  inserted wrong value"
}
