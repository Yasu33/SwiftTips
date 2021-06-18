import UIKit

// print
print("Hello world!")


// comment out
/*
 comment 1
 comment 2
 comment 3
 */


// 命名規則
/*
 変数(camelCase) variableName
 定数(camelCase) constantName
 関数(camelCase) functionName
 列挙型(PascalCase) EnumName
 構造体(PascalCase) StructName
 クラス(PascalCase) ClassName
 メソッド(camelCase) methodName
 プロトコル(PascalCase) ProtocolName
*/


// 定数
let num1: Int = 1 //　型アノテーション
let str1: String = "Hello"

let num2 = 2  // 型推論
let str2 = "Swift"
type(of: num2)
type(of: str2)

//num1 = 2 // 再代入できない→コンパイルエラー

let str3: String
str3 = "OK!" // これはOK

let str4: String
/*
for _ in [1] {
    str4 = "NG!" // 実際には代入は1度だが、コンパイラがそれを保証できない→エラー
}
*/


// 変数
var num3: Double = 3.0 // 型アノテーション
var num4 = 4.0 // 型推論
num3 = 1.0 // 代入
//num3 = "Hello" // 型が違う→コンパイルエラー

var num5: Int
//print(num5) // 初期化されていない→エラー
num5 = 1 // ここで初期化
print(num5)


// Bool型
let c1 = true
let c2 = false

let c3 = !c1
c3 // false

false && false // false
false && true // false
true && false // false
true && true // true

false || false // false
false || true // true
true || false // true
true || true // true


// 数値型
let num6 = 123 // Int型
let num7 = 1.8 // Double型

print(Int8.min, Int8.max)
print(Int16.min, Int16.max)

let num8: Double = 12345678.9
let num9: Float = 12345678.9
print(num8, num9)

let num10: Double = 1.0 / 0.0
print(num10.isInfinite) // 値が無限大かどうか

let num11: Double = 0.0 / 0.0
print(num11.isNaN)

//let num12: Int64 = num6 // コンパイルエラー
let num12: Int64 = Int64(num6) // OK

let num13: Float = 1.0
//let num14: Double = num13 // コンパイルエラー
let num14: Double = Double(num13) // OK

let num15: Int = Int(num7) // 小数点以下が切り捨てられる
print(num15) // 1


// 演算子
123 == 234 // False
123 != 234 // True
123 > 234
123 >= 234
123 < 234
123 <= 234

let num16: Float = 123
let num17: Double = 123
//print(num16 == num17) // 型が一致しない→コンパイルエラー
print(num16 == Float(num17)) // OK


// 算術
1 + 1
2 - 1
2 * 3
9 / 3
5 % 2

//print(num16 + num17) // 型が一致しない→コンパイルエラー
print(num16 + Float(num17))

import Foundation
log(1.0)
Float.pi


// String型
let str5 = "1 2\n3 \\ \" \' \(1 + 1)"
print(str5)

var str6 = """
 あいうえお
 かきくけこ
 さしすせそ
"""
print(str6)

str6 = """
 あいうえお
  かきくけこ
 さしすせそ
 """
print(str6)

let char: Character = "a" // Character型
let str7 = "abc"
print(str7.startIndex)
print(str7.endIndex)
str7[str7.startIndex]
str7[str7.index(str7.startIndex, offsetBy: 1)]
str7[str7.index(str7.endIndex, offsetBy: -1)]

str7.count

for character in str7 {
    print(character)
}

let str8 = "def"
print(str7 + str8)


// 配列
var array1: [Int] = [1, 2, 3]
array1.append(4)
print(array1)
array1.insert(5, at: 2)
print(array1)
print(array1[2])
array1.remove(at: 2)
print(array1)

let array2: [[Int]] = [[1, 2, 3, 4], [5, 6, 7]]

var array3: [Int] = [5, 6, 7]
var array4 = array1 + array3
array4.removeLast()
print(array4)

array4.removeAll()
print(array4)


// tuple
var tuple1: (Int, String)
tuple1 = (1, "a")
tuple1.0
tuple1.1

var tuple2 = (int: 1, string: "a")
tuple2.int
tuple2.string

let int1: Int
let string1: String
(int1, string1) = (1, "a")
int1
string1

let (int2, string2) =  (2, "b")
int2
string2


// Dictionary
var dictionary1 = ["a":1, "b":2]
dictionary1["a"]


// Set
var set1: Set<Int> = [1, 1, 2, 3]
var set2: Set<Int> = [3, 4, 5]
set1
set1.intersection(set2)
set1.union(set2)
set1.symmetricDifference(set2)
set1.subtract(set2)


// 型エイリアス
typealias Age = Int
let myAge: Age = 20


// Optional
let none = Optional<Int>.none
let some = Optional<Int>.some(1)
print(String(describing: none))
print(String(describing: some))

var x: Int?
x = nil
print(String(describing: x))
x = Optional(1)
print(String(describing: x))
x = 1
print(String(describing: x))

var y: Int? = nil
print(String(describing: y))
if let tmp_v = y {
    print(type(of: tmp_v))
} else {
    print("nilのとき")
}
let z1 = y ?? 2
print(String(describing: z1))

y = Optional(1)
print(String(describing: y))
if let tmp_v = y {
    print(tmp_v, type(of: tmp_v))
} else {
    print("nilのとき")
}
let z2 = y ?? 2
print(String(describing: z2))

//x + y // コンパイルエラー
x! + y!

let optionalRange = Optional(0..<10)
let containsSeven = optionalRange?.contains(7)
print(String(describing: containsSeven))

var optionalNum1: Int? = 1
var optionalNum2: Int! = 1
var optionalNum3: Int! = nil
//optionalNum1 + 1 // コンパイルエラー
optionalNum1! + 1
optionalNum2 + 1 // OK
//optionalNum3 + 1 // 実行時エラー

func hello() {
    guard let num = optionalNum3 else {
        print("numがnilの時")
        return
    }
    print("numは\(num)")
}
hello()
optionalNum3 = 1
hello()


// for
for i in 1...3 {
    print(i)
}

let array5 = [4, 5, 6]
for element in array5 {
    print(element)
}

let dictionary2 = ["a":1, "b":2]
for (key, value) in dictionary2 {
    print("Key: \(key), Value:\(value)")
}

let array6 = [1, 2, 3, 4, 5, 6]
for case 4...5 in array6{
    print("4以上5以下の値です")
}

for case let i in array6 where i < 4{
    print("\(i): 4未満の値です")
}


// while
var a = 1
while a < 4 {
    print(a)
    a += 1
}

var b = 1
while b < 1 {
    print("これは表示されない")
    print(b)
    b += 1
}

 b = 1
repeat {
    print("これは表示される")
    print(b)
    b += 1
} while b < 1

label: while true {
    while true {
        print("中のwhile文")
        break label
    }
    print("外のwhile文")
}


// if
a = 1
if a < 0{
    print("aは0未満です")
} else if a < 3 {
    print("aは0以上3未満です")
} else {
    print("aは3以上です")
}

let optionalStr1 = Optional("a")
let optionalStr2 = Optional("b")
if let a = optionalStr1, let b = optionalStr2 { // オプショナルバウンディング
    print("\(a)と\(b)")
} else {
    print("どちらかの値が存在しない場合")
}

a = 3
if case 1...10 = a {
    print("1以上10以下です")
}


// switch
switch a {
case Int.min..<0:
    print("aは負の値")
case 0:
    print("aは0")
default:
    print("aは正の値")
}

switch optionalNum3 {
case .some(let a) where a > 5:
    print("5より大きい値\(a)")
default:
    print("値が存在しないか、5以下")
}


// 関数
func sum(_ int1: Int, _ int2: Int) -> Int {
    return int1 + int2
}
sum(1, 2)

func name(user: inout String){
    if user.isEmpty {
        user = "名無しの権平"
    }
    
    print("私は\(user)です。")
}
var user1: String = ""
name(user: &user1)
print(user1)

func printMembers(members: String...){
    if members.count == 0{
        return
    }
    
    for member in members {
        print("member: \(member)")
    }
}
printMembers(members: "佐藤さん", "鈴木さん", "田中さん")


// 列挙型
enum Subject {
    case japanese
    case mathematics
    case science
    case music
    case english
    case art
}
let art = Subject.art
let science: Subject = .science

enum Subject2 {
    case japanese
    case mathematics
    case science
    case music
    case english
    case art
    
    init?(japaneseName: String) {
        switch japaneseName {
        case "国語": self = .japanese
        case "数学": self = .mathematics
        case "理科": self = .science
        case "音楽": self = .music
        case "英語": self = .english
        case "美術": self = .art
        default: return nil
        }
    }
}
let japanese = Subject2(japaneseName: "国語")

enum Subject3 {
    case japanese
    case mathematics
    case science
    case music
    case english
    case art
    
    var name: String {
        switch self {
        case .japanese: return "国語"
        case .mathematics: return "数学"
        case .science: return "理科"
        case .music: return "音楽"
        case .english: return "英語"
        case .art: return "美術"
        }
    }
}
let subject = Subject3.science
let jpName = subject.name

enum Color: Int {
    case blue = 1
    case yellow = 2
    case red = 3
}
let color = Color(rawValue: 1)
let colorNum = color?.rawValue

enum Color2 {
    case rgb(Float, Float, Float)
    case cmyk(Float, Float, Float, Float)
}
let rgb = Color2.rgb(0.1, 0.5, 0.9)
let cmyk = Color2.cmyk(0.0, 0.4, 0.2, 0.1)

let color2 = Color2.cmyk(0.3, 0.6, 0.9, 0.2)
switch color2 {
case .rgb(let r, let g, let b):
    print("r: \(r), g: \(g), b: \(b)")
case .cmyk(let c, let m, let y, let k):
    print("c: \(c), m: \(m), y: \(y), k: \(k)")
}


// 乱数
let randomInt = Int.random(in: 1...5)
let randomDouble = Double.random(in: 1...100)


// 構造体
struct PersonalInformation {
    let familyName: String
    let lastName: String
    var age: Int
    let birthplace: String
    
    init(familyName: String, lastName: String, age: Int, birthplace: String) {
        self.familyName = familyName
        self.lastName = lastName
        self.age = age
        self.birthplace = birthplace
    }
    
    func printName() {
        print("\(familyName) \(lastName)")
    }
    
    mutating func addAge() { // 構造体のストアドプロパティの変更を含むメソッドにはmutatingが必要
        age += 1
    }
}
let friend1 = PersonalInformation(familyName: "山田", lastName: "太郎", age: 20, birthplace: "大阪府")
friend1.printName()
//friend1.age = 25 // 定数にPersonalInformation型の値を代入している→コンパイルエラー

var friend2 = PersonalInformation(familyName: "山田", lastName: "太郎", age: 20, birthplace: "大阪府")
friend2.age = 25 // 変数に代入しているのでOK
friend2.addAge()
friend2.age

struct PersonalInformation2 {
    let familyName: String
    let lastName: String
    var age: Int
    let birthplace: String
    
    func printName() {
        print("\(familyName) \(lastName)")
    }
}
let friend3 = PersonalInformation2(familyName: "鈴木", lastName: "次郎", age: 18, birthplace: "東京都") // memberwise initializer
friend3.age


// クラス
class People {
    let name: String
    let age: Int
    
    var message: String {
        return "Hello"
    }
    
    init(age: Int, name: String) {
        self.name = name
        self.age = age
    }
    
    func printName() {
        print(name)
    }
}
let people1 = People(age: 20, name: "花子")
people1.printName()

class Student: People { //継承
    var school: String
    
    init(age: Int, name: String, school: String) {
        self.school = school
        super.init(age: age, name: name)
    }
}
let student1 = Student(age: 18, name: "太郎", school: "学校A")
student1.printName()

class Employee: People {
    let office: String
    
    override var message: String {
        return "Hello, I work for \(office)."
    }
    
    init(age: Int, name: String, office: String) {
        self.office = office
        super.init(age: age, name: name)
    }
    
    override func printName() {
        super.printName()
        print(office)
    }
}
let people2 = People(age: 28, name: "太郎")
people2.printName()
let employee1 = Employee(age: 25, name: "次郎", office: "Office A")
employee1.printName()
employee1.message

class SuperClass {
    func overridableMethod() {}
    
    final func finalMethod() {}
}

class SubClass: SuperClass {
    override func overridableMethod() {}
    
//    override func finalMethod() {} // finalキーワードの記述によりコンパイルエラー
}
