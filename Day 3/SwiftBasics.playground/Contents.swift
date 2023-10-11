import UIKit

// variables

var greeting1 = "Hello, playground"
greeting1 = "Hello"

var withDataType: Double
withDataType = 3.0

// constants

let greeting2 = "Hello world!"
//greeting2 = "Hello Swift" - cannot change initial value

// print statement

print("this is a print statement")

// string interpolation

var age = 20
print("my age is \(age)")

// arithmatic operations

var x = 200
var y = 50
var answer = 0

answer = x + y
answer = x - y
answer = x / y
answer = x * y
answer = x % y

// conditions

if x < 100 {
    print("x is less than 100")
} else {
    print("x is greater than 100")
}

if x < 100 {
    print("x is less than 100")
} else if x < 150 {
    print("x is less than 150")
} else {
    print("x is greater than 150")
}

// switch

let day = "Friday"

switch day {
case "Monday":
    print("It is Monday")
case "Tuesday":
    print("It is Tuesday")
case "Wednesday":
    print("It is Wednesday")
case "Thursday":
    print("It is Thursday")
case "Friday":
    print("It is Friday")
default:
    print("It is weekend")
}

// array

var fruits = ["apple", "orange", "mango"]
var color: [String] = [] // empty array

print(fruits)
fruits[0] = "banana"
print(fruits)

// for loops

for i in 0...10 {
    print(i)
}
    
for i in 0..<10 {
    print("i value is - \(i)")
}

// for each

for fruit in fruits {
    print(fruit)
}

// continue & break keywords

for i in 0...10 {
    if i == 5 {
        continue
    }
    print("continue: \(i)")
}

for i in 0...10 {
    if i == 5 {
        break
    }
    print("break: \(i)")
}

// functions

func sayHello() {
    print("this is sayHello fucntion")
}

sayHello()

func getMyDetails(name: String, age: Int) {
    print("my name is \(name), my age is \(age)")
}

getMyDetails(name: "pubudu", age: 25)

func getModule(moduleName1 name: String) {
    print("module name is \(name)")
}

getModule(moduleName1: "iOS")

func getValue(x: Int, y: Int) -> Int {
    return x * y
}

let ans = getValue(x: 10, y: 5)
print("ans from getValue: \(ans)")

// class & structures

class User {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func setAge(age: Int) {
        self.age = age
    }
    
    func getDeatils() {
        print("name: \(name), age: \(age)")
    }
}

var user1 = User(name: "pubudu", age: 25)
user1.getDeatils()

var user2 = user1
user2.getDeatils()
user2.setAge(age: 30)

user1.getDeatils()
user2.getDeatils()

struct NewUser {
    var name: String
    var age: Int
    
    mutating func setAge(age: Int) {
        self.age = age
    }
    
    func getDeatils() {
        print("name: \(name), age: \(age)")
    }
}

// extensions

extension NewUser {
    
    func getName() {
        print("NewUser name: \(name)")
    }
    
    func getAge() {
        print("NewUser age: \(age)")
    }
    
}

var newUser1 = NewUser(name: "tharindu", age: 23)
newUser1.getDeatils()

var newUser2 = newUser1
newUser2.getDeatils()
newUser2.setAge(age: 33)

newUser1.getDeatils()
newUser2.getDeatils()

newUser1.getName()
newUser1.getAge()

var myAge = 25

extension Int {
    func printvalue() {
        print("value is \(self)")
    }
}

myAge.printvalue()

// enums

enum DateEnum {
    case monday
    case tuesday
    case wed
    case thu
    case fri
}

var today = DateEnum.monday

if today == DateEnum.monday {
    // do something
}

if today == DateEnum.monday {
    // do something
}
