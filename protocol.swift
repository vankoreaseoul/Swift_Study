import UIKit

// protocol
// 규격, 규약, 규칙, 청사진, 뼈대

protocol UserInfo {
    var name: String { get set }
    var age: Int { get set }
    func isAdult() -> Bool
}

protocol UserScore {
    var score: Int { get set }
}

protocol UserDetailInfo: UserInfo, UserScore {
    
}

extension UserInfo {
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}

class Guest: UserDetailInfo {
    var score: Int = 0
    
    var name: String = "kim"
    var age: Int = 20
    var height = 180        // UserInfo 타입으로 호출 불가.
}

class Member: UserInfo {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class VIPMember: UserInfo {
    var name: String = "seo"
    var age: Int = 10
}

class UserInfoPresenter {
    func present() {
        let guest = Guest()
        let member = Member(name: "jane", age: 25)
        let vip = VIPMember()
        
        let members: [UserInfo] = [guest, member, vip]
        
        for element in members {
            print(element.name)
        }
    }
}

let presenter = UserInfoPresenter()
presenter.present()
