
// 함수의 형태
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 반환이 없는 함수
func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) {
    print(name)
}

// 매개변수가 없는 함수
func maximumIntegerValue() -> Int {
    return Int.max
}

// 매개변수와 반환이 없는 함수
func hello() -> Void {
    print("hello")
}

func bye() {
    print("bye")
}

sum(a: 3, b: 5)
printMyName(name: "yagom")
printYourName(name: "hana")
maximumIntegerValue()
hello()
bye()
