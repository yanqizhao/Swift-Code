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

var list1 = LinkedList<Int>()
list1.append(1)
list1.append(2)
print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
var list2 = list1
print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")


print("List1: \(list1)")
print("List2: \(list2)")

print("After appending 3 to list2")
list2.append(3)
print("List1: \(list1)")
print("List2: \(list2)")
  
print("Removing middle node on list2")
if let node = list2.node(at: 0) {
    list2.remove(after: node)
}
list2.append(4)
print("List1: \(list1)")
print("List2: \(list2)")

var list3 = LinkedList<Int>()
(1...3).forEach { list3.append($0) }
var list4 = list3
list4.push(0)
print("List3: \(list3)")
print("List4: \(list4)")
list3.push(100)
print("List3: \(list3)")
print("List4: \(list4)")
list4.append(4)
print("List3: \(list3)")
print("List4: \(list4)")
list3.append(5)
print("List3: \(list3)")
print("List4: \(list4)")
list3.insert(at: 1, value: 200)
print("List3: \(list3)")
print("List4: \(list4)")
list4.insert(at: 3, value: 839)
print("List3: \(list3)")
print("List4: \(list4)")

var list5 = LinkedList<Int>()
(1...3).forEach { list5.append($0) }
var list6 = list5
print("List5: \(list5)")
print("List6: \(list6)")
list5.insert(384, after: list5.node(at: 2)!)
print("List5: \(list5)")
print("List6: \(list6)")
list6.insert(558, after: list6.node(at: 1)!)
print("List5: \(list5)")
print("List6: \(list6)")

