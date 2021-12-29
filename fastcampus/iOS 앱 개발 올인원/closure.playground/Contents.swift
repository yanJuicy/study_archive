import UIKit

var multiplyClosure: (Int, Int) -> Int = {
    a, b in return a * b
}

let result = multiplyClosure(4, 2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2, operation: {a, b in
    return a / b
})

let voidClosure: () -> Void = {
    print("ios 개발자")
}

voidClosure()

var count = 0
let incrementer = {
    count += 1
}

incrementer()
incrementer()


count

// Example 1: Cho Simple Closure
//{ (param) -> return type in
//    statement
//}

let choSimpleClosure = {
}

choSimpleClosure()

// Example 2: 코드블록을 구현한 Closure
let simpleClosure = {
    print("Hello, 클로저")
}
simpleClosure()

// Example 3: Input을 받는 Closure
let inputClosure: (String) -> Void = { name in
    print("나의 이름은 \(name)입니다.")
}
inputClosure("lee")

// Example4: 값을 리턴하는 Closure
let returnClosure: (String) -> String = { name in
    let message = "ios 개발 " + name
    return message
}
returnClosure("lee")

// Example 5 : Closure를 파라미터로 받는 함수 구현
func closureSimpleFunction(choSimpleClosure: () -> Void) {
    print("함수에서 호출")
    choSimpleClosure()
}
closureSimpleFunction (choSimpleClosure: {
    print("헬로 코로나 from closure")
})

// Example 6: Trailing Closure
func trailSimpleFunction(message: String, choSimpleClosure: () -> Void) {
    print("함수에서 호출, 메시지 \(message)")
    choSimpleClosure()
}

trailSimpleFunction(message: "메로나", choSimpleClosure: {
    print("헬로 코로나 from closure")
})

trailSimpleFunction(message: "메로나") {
    print("헬로 코로나 from closure")
}
