> 특정 기능 수행에 적합한 메서드, 프로퍼티 등을 정의한 것
> 
- 작성한 프로토콜은 class 나 struct, enum 을 통해 구현된다.
- 프로토콜을 구현한다?
    - 프로토콜에 선언된 명세에 따라 실질적으로 프로퍼티에 값을 할당하여 선언하거나 메서드 내용을 작성하는 것
    - 약간 자바에서 인터페이스 같은 존재인가? → 정답!
    - 프로토콜은 인터페이스입니다.
        - https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/content/Chapter-3/protocols.html
- 최소한으로 가져야 할 속성이나 메서드를 정의하되 구현은 하지 않는다.

## Protocol property

> 프로토콜에 선언되는 프로퍼티는 초기값을 할당할 수 없다.
> 

→ var 키워드로 선언되고 get과 set 이 가능

<aside>
💡

let 으로 선언된 것은 상수로 값을 변경할 수 없다. 자바의 final 효과

</aside>

```java
protocol SomeProtocol {
    var mustBeSettable: Int {get set} // 인스턴스 프로퍼티
    var doesNotNeedToBeSettable: Int{get}
}

protocol AnotherProtocol {
    static var someTypeProperty: Int {get set} // 타입 프로퍼티
}
```

### 프로토콜을 추상클래스처럼 사용

```java
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

//
send mail from Optional("devxoul@gmail.com") to jeon@stylesha.re
Send a feedback to devxoul@gmail.com
```

> 프로토콜은 또다른 프로토콜을 따를 수 있다.



### 대표적인 프로토콜

Any - 모든 타입에 대응

AnyObject - 모든 객체에 대응

https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/content/Chapter-3/protocols.html

https://velog.io/@ellyheetov/%ED%94%84%EB%A1%9C%ED%86%A0%EC%BD%9CProtocol
