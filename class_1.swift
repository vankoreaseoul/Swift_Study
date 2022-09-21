import UIKit

// Class

class MyInfo{
    
    enum GenderType {
        case male
        case female
    }
    
    init(gender: GenderType) {
        self.genderType = gender
    }
    
    private var genderType:GenderType
    var name = ""
    var age = 0
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}

var myInfo = MyInfo(gender: .female)
// myInfo.genderType = .male            -> 중간에 수정을 막으려면 접근 불가능으로 바꾸면 된다. -> private 추가!

// 참조 (class are reference type)
var myInfo1 = MyInfo(gender: .male)     // 변수 myInfo1은 생성된 객체의 주소값을 가지고 있다.
myInfo1.age = 20

var myInfo2 = myInfo1                   // 그 주소값을 변수 myInfo2에 전달
myInfo2.age = 100                       // 즉, myInfo2도 같은 객체를 가리킨다.

var myInfo3 = myInfo2                   // myInfo3도 같은 주소를 가지고 같은 객체를 가리킨다.
myInfo3.age = 200

myInfo1.age                             // -> 200
myInfo2.age                             // -> 200
myInfo3.age                             // -> 200
