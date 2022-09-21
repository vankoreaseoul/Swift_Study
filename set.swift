import UIKit

// Collection Types
// 집합 타입

// Set  -> index, 순서 없음. 넣은 순서대로 나온다는 보장이 없음.

var names = Set<String>()
names.insert("seo") // append 없음.
names.insert("hea")
names.insert("won")
names.insert("won")
names.insert("won")
names.insert("won")

names // 출력할 때마다 순서가 바뀌는 걸 볼 수 있음.
      // 중복해서 삽입 X. Array는 중복 삽입 가능.

var sameNames = ["seo", "seo", "hea", "seo"]    // Array로 세팅됨.
Set(sameNames) // 중복값이 있는 배열을 Set으로 캐스팅하여 중복값 제거.

var names1 = Set<String>()
var names2: Set = ["seo", "hea", "won"] // Array와 Set은 유사하게 보이므로 Set 선언은 이런식으로!


var numbers1: Set = [1, 2, 3, 4, 5]
var numbers2: Set = [4, 5, 6, 7, 8]

// 교집합
numbers1.intersection(numbers2)

// 합집합
numbers1.union(numbers2)

// 합집합 - 교집합 (대칭차집합)
numbers1.symmetricDifference(numbers2)

// 여집합
numbers1.subtracting(numbers2)

