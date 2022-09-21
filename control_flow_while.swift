import UIKit

// Control Flow (흐름 제어)

// while (주의) - 웬만하면 사용하지 않는게 좋다.
// 무한으로 반복문안에서 계속 실헹되는 경우 -> 멈춰버림.

var a = 0

while a < 10 {
    a += 1
    print("계속 실행")
}





// Switch
// 조건에 케이스를 만들어서 분기

let b = "a"

switch b {
case "a", "b", "c":
    print("a or b or c")
case "d":
    print("d")
default:
    print("others")
}


let c = 4

switch c {
case 1:
    print("num 1")
case 2...5:
    print("num 2~5")
default:
    print("others")
}
