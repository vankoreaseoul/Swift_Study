import UIKit

// Collection Type
// 집합 타입

// Array
// Swift - type safe
var myNames = Array<String>()
var myAges = [Int]()

myNames.append("seo")
myNames.append("hea")
myNames.append("won")

myNames[2] + "님"

// 방어코드
// 안전한 코딩 스타일
let index = 3

if index < myNames.count {
    myNames[index]
}

myNames.append(contentsOf: ["hi", "hello"])

myNames = myNames + ["hi", "hello"]

myNames.remove(at: 6) // index방식
myNames.removeLast()

if myNames.count == 0 {
     
}

if myNames.isEmpty {
    
}

myNames.insert("hahaha", at: 0) // append는 바로 뒤에, insert는 특정 인덱스 위치에.

for name in myNames {
    print(name + "님")
}

for (index, name) in myNames.enumerated() {
    print(index, name)
}
