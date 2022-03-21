//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
    
    class func overrideableFunc() {
        print("SomeClass")
    }
}

class SomeSubClass: SomeClass {
    override class var overrideableComputedTypeProperty: Int {
        return 108
    }
    
    override class func overrideableFunc() {
        super.overrideableFunc()
        print("SomeSubClass")
    }
}

class SomeSubClass2: SomeSubClass {
    override static var overrideableComputedTypeProperty: Int {
        return 109
    }
    override static func overrideableFunc() {
        super.overrideableFunc()
        print("SomeSubClass2")
    }
}

print(SomeSubClass2.overrideableComputedTypeProperty)

SomeSubClass2.overrideableFunc()


class Vehicle {
    var currentSpeed = 0.0
    var name = "Vehicle"
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // 什么也不做——因为车辆不一定会有噪音
    }
}
class Car: Vehicle {
    var gear = 1
    override var currentSpeed: Double {
        // 写了 setter 也必须写 getter
        get {
            super.currentSpeed
        }
        // 不能不写 setter 方法，只读属性可以重写为读写属性，反之不可。
        set {

        }
    }
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
        // 不能给同一个属性既添加属性观察器，又重写其 setter 方法。
//        set {
//            currentSpeed = newValue
//        }
    }
    override var description: String {
        name = "AutomaticCar"
        return "\(name) " + super.description
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
// 打印“AutomaticCar: traveling at 35.0 miles per hour in gear 4”

//: [Next](@next)
