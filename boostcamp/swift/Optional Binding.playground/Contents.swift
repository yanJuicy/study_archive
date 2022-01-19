// 옵셔널 바인딩

func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("myName == nil")
}

myName = "yagom"
yourName = nil

if let name = myName, let freind = yourName {
    print("\(name) and \(freind)")
}

yourName = "haha"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}


// 강제 추출
var myName2:String? = "yagom"
var yourName2: String! = nil

print(myName2)
print(myName2!)
