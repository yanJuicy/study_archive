var integers: Array<Int> = Array<Int>()

// var integers: Array<Int> = [Int]()
// var integers: Array<Int> = []
// var integers: [Int] = Array<Int>()
// var integers: [Int] = [Int]()
// var integers: [Int] = []
// var integers = [Int]()

integers.append(1)
integers.append(100)

print(integers)

print(integers.contains(100))
print(integers.contains(99))

integers[0] = 99

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

print(integers.count)

let immutableArray = [1, 2, 3]

var anyDictionary: Dictionary<String, Any> = [String: Any]()

anyDictionary["someKey"] = "value"
print(anyDictionary)

anyDictionary["someKey"] = "dictionary"
print(anyDictionary)

anyDictionary.removeValue(forKey: "someKey")
print(anyDictionary)

let emptyDictionary: [String: String] = [:]
let initialDictionary: [String: String] = ["name":"yagom", "gender": "male"]

var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(2)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet)

print(integerSet.contains(1))
print(integerSet.contains(10))

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
