import UIKit

// Higher order function
// 고차함수  -> 로직을 직접 구현할 필요가 없어 코드를 간단히 줄일 수 있다.

let names = ["kim", "lee", "min", "john"]

// map -> 원하는 스타일로 변경 (길이는 같다)
let names2 = names.map { $0 + "님" }
names2

let names3 = names.map { name in
    name.count
}

let names4 = names.map { name in
    name.count > 3
}


// filter -> 거른다.
let filterNames = names.filter { $0.count > 3 }
filterNames

// reduce 하나로 뭉친다. 통합. 합친다. + -
let sumName = names.reduce("") { $0 + $1 }
sumName

let numberArr = [1, 2, 3, 4, 5, nil, 6, nil, 8]
let sumNum = numberArr.reduce(0) { $0 + ($1 ?? 0) }
sumNum

// compactMap  -> nil을 없앤다
let numbers = numberArr.compactMap { $0 }
numbers

// flatmap -> 한차원을 낮춘다.
let numbers2 = [ [1, 2, 3], [4, 5, 6] ] // 2차원 배열을 1차원 배열로!
let flatNum = numbers2.flatMap { $0 }
flatNum
