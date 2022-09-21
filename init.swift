import UIKit

// Initializer
// 생성지

class MyInfo {
    var name: String
    var myId: String
    
    var age: Int?
    var isAdult: Bool
    
    // designated initializer
    init(name: String, id: String) {
        self.name = name
        self.myId = id
        isAdult = (age ?? 0) > 19 ? true : false
    }
    
//    init() {
//        self.name = ""
//        self.myId = ""
//        isAdult = age > 19 ? true : false
//    }
    
//    init(id: String) {
//        self.name = ""
//        self.myId = id
//        isAdult = age > 19 ? true : false
//    }
    
    
    // convenience initializer  -> 필수조건 - 다른 init을 반드시 실행해야 한다.
    convenience init () {
        self.init(name: "", id: "")
    }
    
    convenience init (id: String) {
        self.init(name: "", id: id)
    }
}

var myInfo1 = MyInfo(name: "seo", id: "abcd")

myInfo1.name
myInfo1.myId

// Struct                   -> class 와 차이: 초기화하는 init 없이 자동으로 만들어준다. 
struct MyConfig {
    var config: String
}

var myCon = MyConfig(config: "xxxxxx")
