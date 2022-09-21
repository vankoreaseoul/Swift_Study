import UIKit

// Function (함수)

// 계산기 -> Class
// 더하기 기능 -> Function

let a = 10
let b = 20

func plus(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func plus1(num1: Int, num2: Int) -> (String, Int) {
    return ("결과값은 ", num1 + num2)
}

func plus2(_ num1: Int, _ num2: Int) -> Int {   // '_ ': 함수를 사용할 때, 파라미터 이름을 사용할 필요 X
    return num1 + num2
}

let sum = plus(num1: a, num2: b)
let p = plus1(num1: a, num2: b)
let q = plus2(a, b)
