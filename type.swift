import UIKit

var greeting = "Hello, playground"

// 변수
var firstName = "heawon"
firstName = "Ines"
firstName = "Amanda"    // var는 값 변경 가능!
print(firstName)


// 상수
let myID = "abcd"
  //myID = "efgh" -> error      // let은 상수. 즉, 값 변경 X!
print(myID)


// Type
    // Type - String
var myName = "john"                 // 자동으로 Type 지정
    // Type Annotations
var lastName: String = "kim"        // 명시적으로 Type 지정

    // Type - Int, Double, Float
var myAge = 30                      // 자동으로 Int로 지정
var yourAge: Double = 20            // int가 아닌 Double로 지정을 원할 경우, 명시적으로!
var myUUID = 100.0                  // 자동으로 Double로 지정
var yourUUID: Float = 100.0         // Double이 아닌 Float로 지정을 원할 경우, 명시적으로!

// var yourName: String = 200 -> swift는 TypeSafe 언어! Type에 있어 엄격!
// var myInt: Int = 100.0



// Booleans
var isOpen: Bool = false

if !isOpen {                    // isOpen == false ?
    print("front")
} else {
    print("back")
}
