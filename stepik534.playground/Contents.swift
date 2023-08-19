import UIKit

protocol AdditionProtocol {
    func add() -> Int
}

protocol MultiplicationProtocol {
    func mult() -> Int
}

extension MultiplicationProtocol {
    func sort(_ array: inout [Int]) {
        array.sort()
    }
}

class Calculate: AdditionProtocol, MultiplicationProtocol {
    private var number1: [Int]
    init (number1: [Int]) {
        self.number1 = number1
    }
    func add() -> Int {
        return number1.reduce(0, +)
    }
    func mult() -> Int {
        return number1.reduce(1, *)
    }
    func sortArray() {
        var sortArray = number1
        sort(&sortArray)
        print(sortArray)
    }
}

let calt = Calculate(number1: [1, 5, 6, 2, 3])
print(calt.add())
print(calt.mult())
print(calt.sortArray())
