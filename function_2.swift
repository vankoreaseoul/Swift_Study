import UIKit

// Function (함수)

// 계산기 만들기 -> Class
// 더하기, 뺴기 ... 기능 -> Function

let a = 10
let b = 20

func plus(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

func minus(_ num1: Int, _ num2: Int) -> Int {
    return num1 - num2
}

func multiply(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}

// View, Present, Display

var inputButtonType = "+"

if inputButtonType == "+" {
    print( "연산결과", plus(a, b) )
} else if inputButtonType == "-" {
    print( "연산결과", minus(a, b) )
} else if inputButtonType == "*" {
    print( "연산결과", multiply(a, b) )  // 중복코드 발생 -> 비효율적
}


func displayCalc( result: (Int, Int) -> Int ) {
    print( "연산결과", result(a, b) )
}

if inputButtonType == "+" {
    displayCalc(result: plus)
} else if inputButtonType == "-" {
    displayCalc(result: minus)
} else if inputButtonType == "*" {
    displayCalc(result: multiply)
}
