import UIKit

var greeting = "Hello, playground"

class SimpleClass{
    var count: Int = 0
    
    deinit{
        print("할당 해제")
    }
}

struct SimpleStruct{
    var count:Int = 0
}

protocol SomeProtocol {
    var mustBeSettable: Int {get set}
    var doesNotNeedToBeSettable: Int{get}
}

protocol AnotherProtocol {
    static var someTypeProperty: Int {get set}
}

protocol Sendable {
    var from: String? {get}
    var to: String {get}
    
    func send()
}

struct Mail: Sendable {
    var from: String?
    var to: String
    func send(){
        print("send mail from \(self.from) to \(self.to)")
    }
}

struct Feedback: Sendable{
    var from: String? {
        return nil
    }
    var to: String
    func send(){
        print("Send a feedback to \(self.to)")
    }
}

func sendAnything(_ sendable: Sendable){
    sendable.send()
}

let mail = Mail(from: "devxoul@gmail.com", to: "jeon@stylesha.re")
sendAnything(mail)

let feedback = Feedback(to: "devxoul@gmail.com")
sendAnything(feedback)




class A{
    static func isStatic(){
        print("this is static function")
    }
    
    class func isClass(){
        print("this is class function")
    }
}
A.isStatic()
A.isClass()

class B {
    func functionB(){
        print("function A in class A")
    }
}
let b: B = .init()
b.functionB()

var class1 = SimpleClass()
var class2 = class1
var class3 = class1

class3.count = 3
print(class1.count)

var struct1 = SimpleStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 2
struct3.count = 3

print(struct1.count)
print(struct2.count)
print(struct3.count)
