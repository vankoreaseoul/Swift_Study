import UIKit

// Properties
// 프로퍼티

class MyInfo {
    
    // stored property (저장)
    var name = ""
    var age = 0
    
    // lazy stored property -> 용량이 큰 데이터를 불러올 때, 과부하 방지.
    lazy var myProfiles = [ UIImage(named: "a"), UIImage(named: "b"), UIImage(named: "c"),
                            UIImage(named: "d"), UIImage(named: "e") ]
    
    // computed property (계산)
        var isAdult: Bool {
           // get{
                    if age > 19 {
                        return true
                    }
                    return false
            // }
        }
        
        // email -> 보안 -> 암호화된 값으로 사용한다. (항상)
        var _email = ""
        var email: String {
            get {
                return _email
            }
            set {
                _email = newValue.hash.description // hash를 암호화라고 치자.
            }
        }
    
}

let myInfo = MyInfo()   // 인스턴스 생성할 때, name, age를 메모리에 올림.
myInfo.email = "abc@test.com"

myInfo.email

myInfo.age = 20
myInfo.name = "seo"
myInfo.isAdult

myInfo.myProfiles       // 이 때서야, 메모리에 myProfiles를 올림.

print(myInfo.age)
