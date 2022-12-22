import Foundation

//Functions are bloc of statement that take zero
//or more parameters or return zero or one output


func noArgumentsAndNoReturnValue () {
   print("I don't know what I am doing")
}


noArgumentsAndNoReturnValue()

//Function with not return value
func addIntegerValue(value1:Int, value2:Int){
   let x = "\(value1+value2)"
    print(x)
}

addIntegerValue(value1: 13, value2: 23)

//function with return value
func newPlusTwo(value3: Int) -> Int {
    let x = 12+value3
    return x
}


let z = newPlusTwo(value3: 4)
z


//Function with return statement
func addTwo(val1:Int,val2:Int) ->Int {
    return val1+val2
}

let z1 = addTwo(val1: 13, val2: 20)
print(z1)


//Function can have internal and external labels ,
//An Argument can have two labels
// external and internal
//the below annotation will
@discardableResult
func minusFrom10(value1: Int)->Int{
    10 - value1
}

//the above function has external label value2 when calling this functions
let z11 = minusFrom10(value1: 10)

//to change external label
func minusFrom10ExLabel( valLs10 value1: Int) -> Int {
    10 - value1
}

let z12 = minusFrom10ExLabel(valLs10: 3)

//to remove named label use  external label _

func minusFrom10WOLabel( _ value1 : Int) -> Int {
    10 - value1
}

let z13 = minusFrom10WOLabel(6)



minusFrom10(value1: 23)



//Swift supports nested function

func doSomethingComplicated(with value: Int)-> Int {
    func mainLogic(value :Int) -> Int {
        value + 3
    }
    return mainLogic(value: value + 3)
}

print(doSomethingComplicated(with: 4))


//for stop warning and linting of unused value
//annonate function with @discardableResult


//Default value functions

func fullName(firstName: String = "Foo",
              lastName : String = "Bar"
)-> String {
    "\(firstName) \(lastName)"
}

fullName()
fullName(firstName: "Baz")
fullName(lastName: "Bar")
fullName(firstName: "bar", lastName: "baz")
