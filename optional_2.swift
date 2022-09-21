import UIKit

// Optionals (옵셔널)
// 값이 있을 수도 있고 없을 수도 있다.

// 옵셔널을 그냥 사용할 수 없는 경우가 많이 있음.

var a: Int? = 10
var b: Int? = 20

// unwrapped
// unwrapping
// unwrap

// Int? -> Int
// String? -> String

// (1) coalesce
var c = (a ?? 0) + (b ?? 0)     // a or b가 nil인 경우, 0으로 초기화 -> optional int를 int로 unwrap.

// (2) force unwrap -> 강제로, 힘으로
// 주의사항
var d = a! + b!                 // a or b가 무조건적으로 값이 있다고 설정 -> 값이 없을 경우(nil), 앱 죽음.
                                // 웬만하면 사용하지 말 것! 100% 확신이 있는 경우만 사용.

// '+' 연산자의 경우, optional일 때 사용불가능으로 세팅됨. swift에서 스펙상 이렇게 설정되어있는 경우가 흔함. -> unwrap 사용.
