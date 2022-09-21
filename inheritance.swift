import UIKit

// inheritance
// 상속 - class 에서만 가능!

// enum, protocol, struct 에서는 불가!

class UserInfo {
    var name = ""
    var age = 0
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}

class Guest: UserInfo {
    override func isAdult() -> Bool {
        return true
    }
    
    func present() {
        name = "kim"
        print(name)
        print(super.name)
        
        print(isAdult())
        print(super.isAdult()) // -> 주의!: override 경우: 원래의 부모 클래스의 것을 사용.
    }
}

let guest = Guest()
guest.present()
