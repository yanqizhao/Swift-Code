//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

// 函数到闭包的演化：
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// -----> 函数：
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames 为 ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
print(reversedNames)

// -----> 闭包：
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames)

// -----> 单行闭包：
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print(reversedNames)

// -----> 省略参数返回值类型闭包：
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print(reversedNames)

// -----> 单表达式隐式返回闭包：
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print(reversedNames)

// -----> 参数名称缩写闭包：
reversedNames = names.sorted(by: { $0 > $1 } )
print(reversedNames)

// -----> 运算符方法：
reversedNames = names.sorted(by: >)
print(reversedNames)

// -----> 尾随闭包：
reversedNames = names.sorted() { $0 > $1 }
print(reversedNames)

// -----> 单一参数省略括号尾随闭包：
reversedNames = names.sorted { $0 > $1 }
print(reversedNames)


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (number) -> String in
    var number = number
    var output = ""
    repeat {
        print(type(of: digitNames[0]))
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
// strings 常量被推断为字符串类型数组，即 [String]
// 其值为 ["OneSix", "FiveEight", "FiveOneZero"]

print(strings)

//func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure:() -> Void) {
//    if let picture = download("photo.jpg", from: server) {
//        completion(picture)
//    } else {
//        onFailure()
//    }
//}
//loadPicture(from: someServer) { picture in
//    someView.currentPicture = picture
//} onFailure: {
//    print("Couldn't download the next picture")
//}

//: [Next](@next)
