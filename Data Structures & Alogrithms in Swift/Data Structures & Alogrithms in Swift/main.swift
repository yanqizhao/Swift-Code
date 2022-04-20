//
//  main.swift
//  Data Structures & Alogrithms in Swift
//
//  Created by yanqizhao on 2022/4/20.
//

import Foundation
import Collections

print("Hello, World!")

var deque: Deque<String> = ["aaa", "bbb", "ccc"]
print(deque)

var stack = Stack<String>()
stack.push("aaa")
stack.push("bbb")
stack.push("ccc")
print(stack)

if let popedElement = stack.pop() {
    assert("ccc" == popedElement)
    print("Popped: \(popedElement)")
}

let array = [1, 2, 3]
var stack2 = Stack(array)
print(stack2)
stack2.pop()

var stack3 = [1.1, 2.2, 3.3]
print(stack3)
