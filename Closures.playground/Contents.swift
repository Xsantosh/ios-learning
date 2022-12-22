import Foundation

//Closures are special type of functions that are
// create inline, can be passed as paramter to other function
// can hold a function.

/**
 Define Closure
 
 let <closure name> : (input datatype) -> (output data type)
 
 for using closure in function
 
 func <function name> ( input_data : datatype,
                        using <closure name>
                    ) -> output_data_type {
                    //closure use
                }
 */
//Add two integer to return a result
let add : (Int,Int) -> Int
= { (lhs : Int, rhs : Int) -> Int in
    lhs+rhs
}


add(34,12)


func customAdd( _ lhs : Int,
                _ rhs : Int,
                using Function : (Int,Int) -> Int
)->Int {
    Function(lhs , rhs)
}



customAdd(10, 20, using: add)

customAdd(110,
          20) {
    (lhs : Int, rhs : Int) -> Int in lhs + rhs
}

//for using closure in place of function it starts with curly braces {
//}

customAdd(10, 20, using:{
    (lhs: Int, rhs : Int) -> Int in
    lhs + rhs
} )


customAdd(20, 40, using: {
    (lhs,rhs) in lhs + rhs
})


//index passing in closure
//$0 is oth index 10
//$1 is 1th index 20
customAdd(10, 20) {
    $0 + $1
}


let ages = [10, 30, 40 ,20]

ages.sorted(by: {
    (lhs: Int, rhs: Int) -> Bool in
    lhs < rhs
})


ages.sorted(by: <)

/**
 <
 can be note as
 func < (lhs: Int, rhs : Int) -> Bool {
    lhs < rhs
 }
 */

ages.sorted(by: >)

/**
 >
 can be note as
 func > (lhs: Int, rhs : Int) -> Bool {
    lhs > rhs
 }
 */

//REASON why we substitute < or > this in function because
// < or > are infix operators who requires lhs and rhs
// and function signature also providing two values


func add10To (_ val : Int) -> Int {
    val + 10
}

func add20To (val : Int) -> Int {
    val + 20
}

func doAddition( with val : Int, using Function : ( Int)-> Int)
-> Int {
    Function(val)
}

//Add

doAddition(with: 10) { (val) in
val + 10
}

doAddition(with: 10, using: add10To(_:))

doAddition(with: 20, using: add20To(val:))



//Closure Revisit

//clousre are special type of functions that are created inline.

//create a function to add two numbers

func add (_ lhs: Int, _ rhs : Int) -> Int {
    lhs + rhs
}


// converting this function to a variable

let add1 : (Int, Int) -> Int = {
    (lhs: Int, rhs : Int) -> Int in
    lhs  + rhs;
    }


//create a custom add function that takes 3 inputs , 2 adders and 1 function and produce result

func customAdd1 (
    _ lhs : Int,
    _ rhs : Int,
    using add : (Int,Int) -> Int
) -> Int {
    add(lhs,rhs)
}


customAdd1(10, 20,using: {
    (s:Int,r:Int) in
    s+r
})
 

customAdd1(10, 20){
    (s:Int,r:Int) -> Int in s+r
}

customAdd1(10, 20) {
    (l,r) in l+r
}



customAdd(10, 20, using: +)

customAdd1(10, 20, using: +)
