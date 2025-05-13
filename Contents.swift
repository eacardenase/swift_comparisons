import Cocoa

struct Point {
    let x: Int
    let y: Int
    var label: String? = nil
}

//func ==(lhs: Point, rhs: Point) -> Bool {
//    return (lhs.x == rhs.x) && (lhs.y == rhs.y)
//}

extension Point: Equatable, Comparable {
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func <(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
}

let a = Point(x: 3, y: 4, label: "a")
let b = Point(x: 3, y: 4, label: "b")
let abEqual = (a == b)
let abNotEqual = (a != b)

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
