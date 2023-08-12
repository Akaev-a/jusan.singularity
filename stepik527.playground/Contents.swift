import UIKit

class Shape {
    func calculateArea() -> Double {
        0
    }
    func calculatePerimeter() -> Double {
        0
    }
}
class Circle: Shape {
    var radius: Double = 0
    override func calculateArea() -> Double {
       let s = radius * .pi
        return s
    }
    override func calculatePerimeter() -> Double {
        let p = radius * .pi * 2
        return p
    }
}
var c = Circle()
c.radius = 6
var e = c.calculateArea()
var t = c.calculatePerimeter()
print(e, t)

class Rectangle: Shape {
    var length: Double = 0
    var width: Double = 0
    override func calculateArea() -> Double {
        let s = length * width
        return s
    }
    override func calculatePerimeter() -> Double {
        let w = (length + width) * 2
        return w
    }
}

var r = Rectangle()
r.length = 3
r.width = 10
var cal = r.calculateArea()
var per = r.calculatePerimeter()
print(cal, per)
