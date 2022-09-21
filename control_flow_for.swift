import UIKit

// Control Flow (흐름 제어)

// for
let name = "234234234"
for char in name {
    print( (Int(String(char)) ?? 0) * 10)
}

let names = ["seo", "hea", "won"]
for name in names {
    print(name + "님")
}

let numberOfLegs = ["ant" : 6, "dog" : 4]
for dic in numberOfLegs {
    print(dic)
}

for index in 0...5 {
    print(index)
}

for index in 0..<5 {
    print(index)
}

for index in 0..<names.count {
    print(names[index])
}
