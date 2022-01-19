
// 매개변수 기본 값
func greeting(friend: String, me: String = "yagom") {
    print("hello \(friend)! i'm \(me)")
}

greeting(friend: "hana")
greeting(friend: "john", me: "eric")

// 전달인자 레이블
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

greeting(to: "haha", from: "yagom   ")


// 가변 매개변수
func sayHelloToFriends(me: String, friends: String...) -> String {
    return "hello \(friends)! i'm \(me)!"
}

print(sayHelloToFriends(me: "yagom", friends: "haha", "eric", "wing"))
print(sayHelloToFriends(me: "yagom"))


// 데이터 타입으로서 함수
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom")

