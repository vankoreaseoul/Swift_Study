import UIKit

// Structure
// 구조체

// value type
struct ImageType {
    var type = ""
}

var imageType1 = ImageType()    // structure는 value 타입. 상속 X
var imageType2 = imageType1     // 객체 복사 -> 즉, 새로운 객체. 동일 객체 X
var imageType3 = imageType2

imageType1.type = "jpg"
imageType2.type = "png"

imageType1.type
imageType2.type
imageType3.type



class MyInfo {
    var myAge = 0
}

var info1 = MyInfo()        // class는 참조타입. 상속 가능
var info2 = info1           // 주소값 받음 -> 동일 객체를 가리킴.
var info3 = info2

info1.myAge = 20
info2.myAge = 10

info1.myAge
info2.myAge
info3.myAge
