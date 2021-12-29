import UIKit

var str = "Hello, playground"

//var scoreDic: [String: Int] = ["Jason":80, "Jay":95, "Jake": 90]
var scoreDic: Dictionary<String, Int> = ["Jason":80, "Jay":95, "Jake": 90]

if let score = scoreDic["Jason"] {
    score
} else {
    // no score
}
scoreDic["Jay"]

scoreDic["Jerry"]

//scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

scoreDic["Jason"] = 99
scoreDic

scoreDic["Jack"] = 100
scoreDic

scoreDic["Jack"] = nil
scoreDic

for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

for value in scoreDic.values {
    print(value)
}

var myDic:[String: String] = ["name": "Jason", "job": "ios Enginner", "city":"Seoul"]

myDic["city"] = "Busan"
myDic

func printNmaeAndCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    } else {
        print("Cannot find")
    }
}

printNmaeAndCity(dic: myDic)
