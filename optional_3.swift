import UIKit

// Optionals (옵셔널)
// 값이 있을 수도 있고 없을 수도 있다.

var a: Int? = 20
var b: Int?

// Unwrapping
// if Statements

if a != nil {
    print(a)        // -> Optional(20)
}                   // optional인 경우, type까지 출력.

if a != nil {
    print(a!)       // -> 20
}

// if let
// if var
if let hasNumber = a {
    print(hasNumber)    // -> 20
}

if let hasNumber = b {
    print(hasNumber)  // -> 실행 X
}

if var hasNumber = a {
    hasNumber = hasNumber * 2
    print(hasNumber)            // -> 40
}

// guard let
// guard var
func testFunc() {
    guard let hasNumber = a else {
        return
    }
    print(hasNumber)
    print("end")
}

testFunc()

func testFunc2() {
    guard var hasNumber = a else {
        return
    }
    hasNumber = hasNumber * 2
    print(hasNumber)
    print("end")
}

testFunc2()
