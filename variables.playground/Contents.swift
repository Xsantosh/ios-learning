import Foundation

//Foundation includes all basics how swift works,
//it includes all the basic data types like string, int, bool

//in swift we can define varibles by using 2 keywords
// let :- once initialized can't be changed [final]
// var :- can be changed and modified  [variable]

let myName:String = "Santosh"
let myOccupaion:String = "developer"
//variables can also defined without data types
let email = "xsantosh7"

var names = [
    myName,
    myOccupaion
]
names.append(email)

let foo = "Foo"
var foo2 = foo

foo
foo2
foo2 = "New value"

let carBrands  = [
"toyota",
"honda",
"rolls",
"benz"
]

var cars = carBrands
cars.append("audi")

cars
// As NSMutableArray is a class instance we can change internal data
// strcutures are value type [immutable] and class are instance types


let oldArray = NSMutableArray(
array: [
"value",
"value2"
])
oldArray
oldArray.add("value1")

var newArray = oldArray
newArray.add("value3")

newArray
oldArray


func addSomeValues(_ array:NSArray){
    let copy = array as! NSMutableArray
    copy.add("newAddedValue")
}

addSomeValues(oldArray)

oldArray
