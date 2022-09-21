import UIKit

// String

let myName = "seo hea won"

for character in myName {
    print(character)
}

// 붙이기
let myFirstName = "hea won"
let myLastName = "seo "
let name = myLastName + myFirstName

// 줄 바꿈
let yourName = "seo\nhea\nwon"
print(yourName)

let name2 =
"""
seo
 hea
won
"""
print(name2)


// 문자열화
let isOn = true
isOn.description

let myNumber = 123
myNumber.description
String(myNumber)

"My number is \(myNumber)"
"My number is \(myNumber)".last
"My number is \(myNumber)".first
"My number is \(myNumber)".dropLast()
"My number is \(myNumber)".dropFirst()

let price = "12.33원"
price.dropLast().split(separator: ".")
