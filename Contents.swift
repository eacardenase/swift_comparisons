import Cocoa

struct Point: Equatable {
    let x: Int
    let y: Int
    let label: String? = nil
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)
let abEqual = (a == b)
