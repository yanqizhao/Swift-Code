//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func someFunction(first firstParameterName: Int,first secondParameterName: Int) {
    // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
    print(String(firstParameterName + secondParameterName))
}
//someFunction(firstParameterName: 1, secondParameterName: 2)

someFunction(first: 1, first: 2)

func arithmeticMean(_ numbers: Double..., with weights: Double...) -> (Double, Double) {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    
    var weightTotal: Double = 0
    for weight in weights {
        weightTotal += weight
    }
    return (total / Double(numbers.count), weightTotal / Double(weights.count))
}

var a: Double = 1
var b: Double = 2
var c: Double = 3
var d: Double = 4
var e: Double = 5
arithmeticMean(a, b, c, d, e, with: a, b, c, d, e)

arithmeticMean(1, 2, 3, 4, 5, with: 3, 3, 3, 5, 5)
// 返回 3.0, 是这 5 个数的平均数。
arithmeticMean(3, 8.25, 18.75)
// 返回 10.0, 是这 3 个数的平均数。

//: [Next](@next)
