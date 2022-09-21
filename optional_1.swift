import UIKit

// Optionals (옵셔널)

// 개념
// 값이 있을 수도 있고, 없을 수도 있다.

// 0 vs null
// 값이 있다.
// 값이 없다. -> nil(== null)

// 0 -> 다 쓴 상태인 값. (값이 있다)

var myAge: Int? = 0                 // '?'를 붙임으로써 optional 상태 -> nil일 수도 있다.

myAge = nil

// 값이 없는 상태 체크 -> 틀린 로직 (Swift 언어 스펙)
if myAge == 0 {
    // alert - 나이를 입력해 주세요.
}

if myAge == nil {
    // alert - 나이를 입력해 주세요.
}


var myName: String? = ""     // empty string

if myName == "" {
    // 이름을 입력해주세요. -> 빈 칸으로 제출한 경우
}

// 값이 없는 상태 체크
if myName == nil {
    // 이름을 입력해주세요. -> 손도 안 댄 경우
}


var yourAge: Int?       // 초기화를 안 했으므로 값이 nil인 경우
var yourName: String?
