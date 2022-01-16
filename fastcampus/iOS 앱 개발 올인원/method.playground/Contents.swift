import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfRegistered: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = maxStudent - numOfRegistered
        return remainSeats
    }
    
    mutating func register() {
        numOfRegistered += 1
    }
    
    static let target: String = "Anybody want to lean ios"
    
    static func showAcademy() -> String {
        return "fastcampus"
    }

}

var lec = Lecture(title: "IOS Basic")

lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.register()

lec.remainSeats()
