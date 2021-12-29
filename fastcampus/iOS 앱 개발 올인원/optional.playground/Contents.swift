import UIKit

var carName: String? = "Tesla"
carName = nil
carName = "Tank"

var favoriteStar: String? = nil
let num = Int("10")

// Forced unwrapping

// Optional binding (if let)

// Optional binding (guard)

// Nil coalescing

print(carName!)


if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name X")
}

func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int X")
        return
    }
    
    print(parsedInt)
}

printParsedInt(from: "100")
printParsedInt(from: "hello")

carName = nil
let myCarName: String = carName ?? "모델 S"

let foodName: String? = "hamburger"
if let myFood = foodName {
    print(myFood)
} else {
    print("no")
}

func printNickname(nickName: String?) {
    guard let name = nickName else {
        print("no nickname")
        return
    }
    print(name)
}

printNickname(nickName: nil)
