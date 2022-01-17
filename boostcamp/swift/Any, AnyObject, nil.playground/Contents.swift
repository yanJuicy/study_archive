// MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 가능"
someAny = 123.12

// MARK - AnyObject
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
// someAnyObject = 123.12 오류 발생

// MARK = nil
// someAny = nil 오류 발생
// someAnyObject = nil 오류 발생

