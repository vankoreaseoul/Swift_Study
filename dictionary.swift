import UIKit

// Collection Type
// 집합 타입

// Dictionary

var namesOfStreet = [String : Any]()

namesOfStreet["302ro"] = "1st Street"
namesOfStreet["303ro"] = "2nd Street"
namesOfStreet["304ro"] = 3

namesOfStreet
namesOfStreet["302rr"] // -> nil, crash 발생 x(Array와 차이)
namesOfStreet["302ro"]

namesOfStreet["302ro"] = nil // 덮어쓰기.   따로 optional을 주지 않아도 nil 사용 가능.
namesOfStreet["302ro"]
namesOfStreet   // key:302ro가 없어짐.

var nameOfStreet2 = ["a" : 1, "b" : 2, "c" : 3]

namesOfStreet.keys

for dic in namesOfStreet {
    print(dic)
}
