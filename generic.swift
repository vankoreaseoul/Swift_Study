import UIKit

// generic <Type내가 정한 임의의 타입>
// 로직 반복, 타입 여러가지

// stack
// 제한 - where절: 타입을 제한할 수 있다. ex> Numeric, String protocol, Equatable
struct MyStack<MyType> where MyType: Equatable {
    var items = [MyType]()
    
    mutating func push(item: MyType) {
        items.append(item)
    }
    
    mutating func pop() -> MyType? {
        if items.isEmpty {
            return nil
        }
        return items.removeLast()
    }
}


struct IntStack<Int> {                  // Int 타입에서만 사용할 수 있음.
    var items = [Int]()                 // -> 같은 로직으로 다른 타입에서 작용하는 걸 만들 때
                                        // generic 사용 (위와 같이)
    mutating func push(item: Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int? {
        if items.isEmpty {
            return nil
        }
        return items.removeLast()
    }
}



var myStack = MyStack<String>()
myStack.push(item: "a")
myStack.pop()

var myStack2 = MyStack<Int>()
myStack2.push(item: 1)
myStack2.pop()
