//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/**
 长期写访问期间外部访问造成的冲突
 */
//var stepSize = 1
//
//func increment(_ number: inout Int) {
//    number += stepSize
//}
//
//increment(&stepSize)
//// 错误：stepSize 访问冲突

/**
 解决外部访问造成的冲突
 */
// 显式拷贝
var stepSize = 1

func increment(_ number: inout Int) {
    number += stepSize
}

var copyOfStepSize = stepSize
increment(&copyOfStepSize)

// 更新原来的值
stepSize = copyOfStepSize
// stepSize 现在的值是 2


/**
 长期写访问多个 in-out 参数传入相同变量造成的冲突
 */
func balance(_ x: inout Int, _ y: inout Int) {
    let sum = x + y
    x = sum / 2
    y = sum - x
}
var playerOneScore = 42
var playerTwoScore = 30
balance(&playerOneScore, &playerTwoScore)  // 正常
// balance(&playerOneScore, &playerOneScore)
// 错误：playerOneScore 访问冲突


/**
 值类型可变方法中对 self 访问的冲突
 */
struct Player {
    var name: String
    var health: Int
    var energy: Int
    
    static let maxHealth = 10
    mutating func restoreHealth() {
        health = Player.maxHealth
    }
}

extension Player {
    // 这个方法没有对 restoreHealth() 方法进行调用
    // 所以这里对冲突仍然是 inout 冲突，而不是对 self 访问的冲突
    mutating func shareHealth(with teammate: inout Player) {
        balance(&teammate.health, &health)
    }
}

var oscar = Player(name: "Oscar", health: 10, energy: 10)
var maria = Player(name: "Maria", health: 5, energy: 10)
oscar.shareHealth(with: &maria)  // 正常

//oscar.shareHealth(with: &oscar)
// 错误：oscar 访问冲突


/**
 元组元素重叠写访问造成的冲突
 */
var playerInformation = (health: 10, energy: 20)
//balance(&playerInformation.health, &playerInformation.energy)
// 错误：playerInformation 的属性访问冲突

/**
 值类型存储属性重叠写访问造成的冲突
 */
var holly = Player(name: "Holly", health: 10, energy: 10)
//balance(&holly.health, &holly.energy)  // 错误

/**
 对局部变量重叠写访问不会造成冲突
 */
func someFunction() {
    var oscar = Player(name: "Oscar", health: 10, energy: 10)
    balance(&oscar.health, &oscar.energy)  // 正常
}

//: [Next](@next)
