import UIKit


// MARK: - Default init
class Car {
    var name = ""
}

let myCar = Car()


// MARK: - Designated init
class Person {
    var name:String
    
    init(name:String) {
        self.name = name
    }
}

let P = Person(name: "")


// MARK: - Convenience init

class Polygon {
    var points: [CGPoint]

    init(points: [CGPoint]) {
        self.points = points
    }
    
    convenience init(squareWithLength length: CGFloat) {
        let points = [
            CGPoint(x: 0, y: 0),
            CGPoint(x: length, y: 0),
            CGPoint(x: length, y: length),
            CGPoint(x: 0, y: length),
        ]

        self.init(points: points)
    }
}

var instance = Polygon(squareWithLength: 20.0)
print(instance.points)


// MARK: - Failable init

struct User {
    var passcode: String

    init?(passcode: String) {
        if passcode.count == 4 {
            self.passcode = passcode
        } else {
            return nil
        }
    }
}

let newUser = User(passcode: "123")
print(newUser)


// MARK: - Required init

class A{
    var number : Int
    
    init() {
        self.number = 0
    }
    
    required init(number: Int) {
        self.number = number
    }
}

class B:A{
    required init(number: Int) {
        super.init(number: number)
    }
}

var newObj = B(number: 10)

