//
//  Stack.swift
//  Data Structures & Alogrithms in Swift
//
//  Created by yanqizhao on 2022/4/20.
//

import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    // 有返回值的方法，如果用不到返回值就会报警告，这个特性是表明要忽略这个警告
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public func isEmpty() -> Bool {
        peek() == nil
    }
}

extension Stack: CustomDebugStringConvertible {
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Element
    
    // 可变参数方法
    public init(arrayLiteral elements: ArrayLiteralElement...) {
        storage = elements
    }
}
