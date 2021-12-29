import UIKit

func printName() {
    print("My name is Jason")
}

printName()

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 10)

func printTotalPrice(가격 price: Int, 갯수 count: Int) {
    print("Total price \(price * count)")
}

func printTotalPrice2(_ price: Int, _ count: Int) {
    print("Total price \(price * count)")
}

printTotalPrice(가격: 100, 갯수: 20)
printTotalPrice2(1500, 100)

func printTotalPriceWithDefaultValue(price: Int = 1500, count: Int) {
    print("\(price * count)")
}

printTotalPriceWithDefaultValue(count: 5)
printTotalPriceWithDefaultValue(price: 2000, count: 1)

func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let price = totalPrice(price: 10000, count: 2)
print(price)

func fullName(_ name: String, _ family: String) -> String {
    let completeName = family + name
    print(completeName)
    return family + name
}

fullName("hanju", "lee")

var value = 3
func increementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

increementAndPrint(&value)
print(value)

// Function as a param
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(subtract, 3, 4)
