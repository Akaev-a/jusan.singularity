import UIKit

class Transformer {
    func run() {
        print("Running")
    }
    
    func fire() {
        print("Firing")
    }
    
    func transform() {
        print("Transforming")
    }
}

class Autobot: Transformer {
    private var attackLevel: Int = 0
    var attack: Int {
            get {
                return attackLevel
            }
            set {
                attackLevel = newValue
            }
        }
    func fly() {
        print("Flying")
    }
}

class Decepticon: Transformer {
    func jump() {
        print("Jumping")
    }
}

var bot = Autobot()
bot.attack = 40
var attackBot = bot.attack
print("Attack bot = \(attackBot)")
