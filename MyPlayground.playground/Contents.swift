import UIKit

// Tuple / Кортеж
func calculateRectangleParameters(width: Int, height: Int) -> (perimeter: Int, square: Int) {
    let perimeter = 2 * (width + height)
    let square = width * height
    return (perimeter, square)
}

let result = calculateRectangleParameters(width: 4, height: 5)
print(result)
print("Perimiter: \(result.perimeter)")
print("Square: \(result.square)")

let point = (10, 20)
print(point.0)
print(point.1)

let coordinate: (x: Int, y: Int) = (x: 10, y: 20)

let user = ("John", 25, "Minsk", true)

let (name, age, city, isAdmin) = user
print(name)
print(age)

// strcut/class

// MARK: - Collections
// - array (массив)
// - dictionary (словарь)
// - set (множество)

// MARK: Array
let users = ["John", "Snow", "Eddard"]
let numbers: [Int] = [21, 42, -3, 44, 95, 63]

let emptyArray: [Bool] = []
let emptyArray1 = [Int]()

let array: Array<Int> = [1, 2, 3]
let array1 = Array(repeating: 10, count: 10)
print(array1)

// Получение элемента по индексу
let firstElement = numbers[3]
print(firstElement)

let index = 6
if index < numbers.count {
    print("Found element: \(numbers[index])")
} else {
    print("Out of range")
}

// Добавление элемента
var fruits = ["apple", "banana"]
fruits.append("orange")

print(fruits)

fruits.insert("grape", at: 1)
print(fruits)

// fruits.insert("watermellon", at: 99)

// Удаление элмента
fruits.remove(at: 0)
// fruits.remove(at: 99)
print(fruits)

//fruits.removeFirst()
//fruits.removeLast()
//
//fruits.removeFirst()

if !fruits.isEmpty {
    fruits.removeFirst()
} else {
    print("Array is empty!")
}


print(fruits)

var vegetables = ["помидор", "лук", "редиска"]

// vegetables.removeFirst(3)
//vegetables.removeAll()
print("Vegetables: \(vegetables)")

// Замена элемента
var animals = ["cat", "dog", "bird"]
animals[1] = "hamster"

print(animals)

var plants = ["cucumber"] + fruits + vegetables
print(plants)

fruits.append(contentsOf: vegetables)
print(fruits)


// Циклы
var count = 0
while count < 10 {
    print("Count is \(count)")
    count += 1
}

print("________________________")
for plant in plants {
    print(plant)
}

let cities = ["Москва", "Санкт-Петербург", "Екатеринбург"]

for (index, value) in plants.enumerated() {
    print("Index: \(index) Value: \(value)")
}

// break
for city in cities {
    print(city)
    if city == "Санкт-Петербург" {
        print("Элемент найден. Цикл прерван.")
        break
    }
}

// continue
print("________________________")
for city in cities {
    if city != "Санкт-Петербург" {
        continue
    }
    print(city)
}


// Range
let intArray: Array<Int> = [1, 2, 3, 4, 5, 6]
let range: ClosedRange<Int> = 1...10

print("________________________")
for i in range {
    print(i)
}

print("________________________")
for i in 1...5 {
    print(i)
}

print("________________________")
for i in 1..<5 {
    print(i)
}

print("________________________")

for element in plants[2...] {
    print(element)
}

for element in -1...5 {
    print(element)
}

// MARK: - Dictionary
// Пары ключ - значения
print("________________________")
let ages: [String: Int] = ["John": 30, "Snow": 25, "Eddard": 40]
var countries: [String: String] = ["USA": "Washington", "Belarus": "Misnk", "Russia": "Moscow"]

let emptyDictionary: [String: Bool] = [:]
let emptyDictionary1 = [String: Bool]()

// Получить значения
let capital = countries["USA"]
print(capital)
let capitalCanada = countries["Cananda"]
print(capitalCanada)

if let capitalUSA = countries["Australia"] {
    print(capitalUSA)
} else {
    print("Cant find value!")
}

// Добавить новое значение
countries["UK"] = "London"
countries["USA"] = "New York"

print(countries)

// Удаление из словаря
countries.removeValue(forKey: "Australia")

print(countries)

// Свойства
print("________________________")
print(countries.isEmpty)
print(countries.count)
print(countries.keys)
print(countries.values)

// Итерации по словарям (циклы)
print("________________________")
for element in countries {
    print(element)
    print(element.key)
    print(element.value)
}

print("________________________")
for (key, value) in countries {
    print(key)
    print(value)
}

let keys = countries.keys
for key in countries.keys {
    print(key)
}

for value in countries.values {
    print(value)
}

// MARK: - Set / Набор (Множество)
// Неупорядоченная коллекция.
// Хранит в себе только уникальные значения.

let colors: Set<String> = ["Red", "Green", "Blue"]

let numbersSet: Set = [1, 3, 4, 5, 6]

var emptySet: Set<Int> = []
let emptySet1 = Set<Int>()

// Добавление/удаление
print("________________________")
emptySet.insert(10)
emptySet.insert(14)
emptySet.insert(20)
emptySet.insert(20)
emptySet.insert(20)
emptySet.insert(20)
print(emptySet)

emptySet.remove(10)
emptySet.remove(20)
print(emptySet)

// Проверка наличия элемента.
let isContain = emptySet.contains(14)
print(isContain)

print(emptySet.isEmpty)
print(emptySet.count)

let a: Set<Int> = [1, 2, 3]
let b: Set<Int> = [3, 4, 5]
let resultSet = a.subtracting(b)
print(resultSet)

// MARK: - Функция высшего порядка
// - map - модификация
let testNumbers = [1, 2, 3, 4, 5]

var testNumbersSquareResult: [Int] = []
for number in testNumbers {
    let result = number * number
    testNumbersSquareResult.append(result)
}

print(testNumbersSquareResult)

func transform(number: Int) throws -> Int {
    number * number
}

let resultOfMap = testNumbers.map({ number in
    number * number
})

let resultOfMapString = testNumbers.map({ number in
    return String(number)
})

let resultOfMapDouble = testNumbers.map({ number in
    return Double(number)
})

let resultOfMapShort = testNumbers.map { Double($0) }
let resultOfMapSquareShort = testNumbers.map { $0 * $0 }

print(resultOfMap)
print(resultOfMapString)
print(resultOfMapDouble)

// - filter - фильтрация
print("________________________")
var filteredNumbers: [Int] = []
for number in testNumbers {
    if number % 2 == 0 {
        filteredNumbers.append(number)
    }
}

print(filteredNumbers)

let filteredNumbersShort = testNumbers.filter { $0 % 2 == 0 }
print(filteredNumbersShort)

// - reduce - объединение всех элементов в один какой-то результат

// [1, 2, 3, 4, 5]
// partialResult = 0
// number = 1

// partialResult = 1
// number = 2

// partialResult = 3
// number = 3

// partialResult = 6
// number = 4

// partialResult = 10
// number = 5

// result = 15
let sumReduceResult = testNumbers.reduce(0) { partialResult, number in
    partialResult + number
}
print(sumReduceResult)

// - forEach
users.forEach { user in
    print("Hello, \(user)!")
}

// - sorted - сортиковка

let sortedArray = testNumbers.sorted { number1, number2 in
    number1 > number2
}

let sortedArrayShort = testNumbers.sorted { $0 > $1 }
let sortedArrayShort2 = testNumbers.sorted(by: >)

print(sortedArray)
print(sortedArrayShort2)

// - compactMap - то же самое что и map, только фильтрует nil

let numbersWithNil: [Int?] = [23, 23, nil, 99, 12, nil, 12, 24]

let numbersWithoutNil = numbersWithNil
    .compactMap { $0 }
    .map { $0 * $0 }
print(numbersWithoutNil)


// let testNumbers = [1, 2, 3, 4, 5]
let comboResult = testNumbers
    .filter { $0 % 2 == 0 }
    .map { $0 * $0 }
    .reduce(0) { $0 + $1 }

print(comboResult)

typealias Student = (name: String, age: Int, marks: [String: Int], facultatives: Set<String>)

//let student: (name: String, age: Int, marks: [String: Int], facultatives: Set<String>) = (name: "Max", age: 20)
//
//let student1: Student = (name: "Max", age: 20)
//
//func getStudentMark(student: Student) {
//
//}
