import UIKit

// 기초 연산자
// Basic Operators

// + - * / %(remainder Operator)
// Swift 언어 특징
// 타입 엄격
// 강타입
// type safe

var a: Int = 20
let b: Double = 30

let c = a + Int(b)

let aa = "hi"
let bb = " hello"

let cc = aa + bb

// %
// 홀수 짝수
if a % 2 == 0 {
    print("even")
} else {
    print("odd")
}

if b.truncatingRemainder(dividingBy: 2) == 0 {
    print("even")
} else {
    print("odd")
}

a = a + 2
a += 2

a = a - 2
a -= 2
