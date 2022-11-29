import Foundation

let myAge = 20
let yourAge = 30

if myAge > yourAge {
    "I'm older than you"
}else if myAge < yourAge {
    "I'm younger than youw "
}else {
    "Oh hey, we are the same age"
}


//There are 3 different types of operators available in swift
// 1. Unary Prefix   e.g. !1
let foo = !true
// 2. Unary Postfix  e.g. 1!
let name = Optional("Santosh") //name can contain null value of Santosh
type(of: name)
let unaryPostfix = name!
type(of: unaryPostfix)
// 3. binary Infix   e.g. 1+1
let result = 1 + 2

//Arithmetic Operatos
//+  [Addition or Concatation Operator]
//-
//*
// /
//Assignment Operatos
// =
//Comparator Operatos
// >  [greater than]
// <  [less than]
// >= [greater than]
// <= [less than]
// != [not equalto]


let result1 = "Foo" + " " + "Baz"


let age1 = 17
//let message: String
//if age1 >= 18 {
//    message = "You are eligible vote"
//}else {
//    message = "You are not eligible for vote"
//}

//by using ternary operator
// result = CONDITION ? [Value IF CONDITION is TRUE] : [Value IF CONDITION is False]

let message = age1 >= 18
    ? "You are eligible vote"
    : "You are not eligible"
message
