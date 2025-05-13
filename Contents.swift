import Cocoa

struct Point {
    let x: Int
    let y: Int
    var label: String? = nil
}

//func ==(lhs: Point, rhs: Point) -> Bool {
//    return (lhs.x == rhs.x) && (lhs.y == rhs.y)
//}

extension Point: Comparable, Hashable {
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func <(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
    
    static func +(lhs: Point, rhs: Point) -> Point {
        let x = lhs.x + rhs.x
        let y = lhs.y + rhs.y
        return Point(x: x, y: y)
    }
}

let a = Point(x: 3, y: 4, label: "a")
let b = Point(x: 3, y: 4, label: "b")
let abEqual = (a == b)
let abNotEqual = (a != b)

let aPlusB = a + b
print(aPlusB)

print(abEqual) // true
print(abNotEqual) // false

let c = Point(x: 2, y: 6)
let d = Point(x: 3, y: 7)
let cdEqual = (c == d)
let cLessThanD = (c < d)

print(cdEqual) // false
print(cLessThanD) // true

let cLessThanEqual = (c <= d)
let cGreaterThan = (c > d)
let cGreaterThanEqual = (c >= d)

let pointRange = c..<d
pointRange.contains(a)
pointRange.contains(Point(x: -1, y: -1))

let points: Set = [a, b, c]
points.intersection([b, c, d])

let pointNames: [Point:String] = [
    Point(x: 0, y: 0): "origin",
    a: "a",
]

class Person {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

extension Person: Equatable {
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return (lhs.name == rhs.name) && (lhs.age == rhs.age)
    }
}

let p1 = Person(name: "Edwin", age: 29)
let p2 = Person(name: "Keyla", age: 30)
let people = [p1, p2]

let p1Index = people.firstIndex(of: p1) // 0
