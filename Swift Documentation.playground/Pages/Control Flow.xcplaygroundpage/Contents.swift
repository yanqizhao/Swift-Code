//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

//while square < finalSquare {
//    // 掷骰子
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    // 根据点数移动
//    square += diceRoll
//    if square < board.count {
//        // 如果玩家还在棋盘上，顺着梯子爬上去或者顺着蛇滑下去
//        square += board[square]
//    }
//    print(String(square) + ", ")
//}
//print("Game over!")

//repeat {
//    // 顺着梯子爬上去或者顺着蛇滑下去
//    square += board[square]
//    print(String(square) + ", ")
//    // 掷骰子
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    // 根据点数移动
//    square += diceRoll
//} while square < finalSquare
//print("Game over!")

gameLoop: while square != finalSquare {
    print("square: " + String(square))
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    print("diceRoll: " + String(diceRoll))
    switch square + diceRoll {
    case finalSquare:
        print("finalSquare---square + diceRoll: " + String(square + diceRoll))
        // 骰子数刚好使玩家移动到最终的方格里，游戏结束。
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        print("newSquare > finalSquare---square + diceRoll: " + String(square + diceRoll))
        // 骰子数将会使玩家的移动超出最后的方格，那么这种移动是不合法的，玩家需要重新掷骰子
        continue gameLoop
    default:
        print("default---square + diceRoll: " + String(square + diceRoll))
        // 合法移动，做正常的处理
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

//: [Next](@next)

let someCharacter: Character = "b"
switch someCharacter {
case "a", "b":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// 输出“The last letter of the alphabet”

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
case 1, 4, 6, 8, 9:
    description += " 小于10"
    fallthrough
default:
    description += " an integer."
}
print(description)
// 输出“The number 5 is a prime number, and also an integer.”
