import UIKit
import Foundation

//var name: String = "yagom"
//var age: Int = 100
//var job = "ios Programmer"
//var hegiht = 181.5
//
//let value = arc4random_uniform(100)
//
//// --- Tuple
//let coordinate = (4, 6)
//
//let x = coordinate.0
//let y = coordinate.1
//
//let coordinatesNamed = (x:2, y:3)
//let x2 = coordinatesNamed.x
//let y2 = coordinatesNamed.y
//
//let (x3, y3) = coordinatesNamed
//x3
//y3
//
//var i = 0
//while i < 10 {
//    print(i)
//    if i == 5 {
//        break
//    }
//    i+=1
//}
//
//i = 10
//repeat
//{
//    print(i)
//    i += 1
//} while i < 10

//let closedRange = 0...10
//let halfClosedRange = 0..<10
//
//var sum = 0
//for i in closedRange {
//    print(i)
//    sum += i
//}
//
//print(sum)
//
//var sinValue: CGFloat = 0
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//
//let name = "dfds"
//for _ in closedRange {
//    print("--> name: \(name)")
//}
//
//for i in closedRange where i % 2 == 0 {
//    print(i)
//}
//
//
//// switch
//let num = 10
//switch num {
//case 0:
//    print(0)
//case 1...10:
//    print("1~10 사이")
//case 10:
//    print(10)
//default:
//    print("나머지")
//}
//
//
//let pet = "bird"
//switch pet {
//case "dog",
//     "cat":
//    print("집동물")
//default:
//    print("모르겠음")
//}
//
//let nums = 5
//switch nums {
//case _ where nums % 2 == 0:
//    print("짝수")
//default:
//    print("홀수")
//}
//
//let coordinate = (x:10, y:10)
//switch coordinate {
//case (0, 0):
//    print("원점")
//case (0, _):
//    print("y축")
//case (let x, 0):
//    print("x축, x:\(x)")
//case (let x, let y) where x == y:
//    print("x equals y \(x) \(y)")
//case (let x, let y):
//    print("x and y \(x) \(y)")
//default:
//    print("좌표 어딘가")
//}


// Array
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)

print(integers)
print(integers.contains(100))
print(integers.contains(99))

integers[0] = 99
print(integers)

integers.remove(at: 0)
print(integers)
integers.removeLast()

print(integers.count)

// let을 사용하여 불변 Array 선언
let immutableArray = [1, 2, 3]
//immutableArray.append(4)

// Dictionary
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary)

anyDictionary["someKey"] = "dictionary"
print(anyDictionary)


let emptyDictionary: [String: String] = [:]
let initalDictionary: [String: String] = ["name": "yagom", "gender": "male"]


// Set
var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(99)

print(integerSet)

print(integerSet.contains(1))
integerSet.remove(1)

print(integerSet.count)

let setA:Set<Int> = [1,2,3,4,5]
let setB:Set<Int> = [3,4,5,6,7]

let union:Set<Int> = setA.union(setB)
print(union)
