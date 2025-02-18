> 스위프트에서 Static 은 ‘타입’ 프로퍼티 혹은 ‘타입’ 함수를 의미
> 

‘static’ 과 ‘class’ 프로퍼티/함수와의 차이점

- ‘class’ 프로퍼티/함수 는 오버라이딩이 가능하지만
- ‘static’은 오버라이딩이 불가능하다.

### 타입Type 프로퍼티/함수

- 타입 메서드로 선언할 때 가장 앞에 **`static`** 으로 붙인다.
    - **`class`** 로도 타입 메서드 선언 가능
- 타입메서드는 타입에 걸려있는 메서드
    - 인스턴스 메서드는 인스턴스에 걸려있는 메서드 → 인스턴스를 통해 메서드 호출은 불가능하다
- 인스턴스를 만들지 않아도 타입만 있으면 사용할 수 있다.

```java
class A {
    static func isStatic(){
        print("this is static function")
    }
    
    class func isClass(){
        print("this is class function")
    }
}
A.isStatic()
A.isClass()

//
this is static function
this is class function
```

### 인스턴스 프로퍼티/함수

- 인스턴스를 생성해야만 접근할 수 있는, 사용할 수 있는 함수
- 인스턴스 메서드

```java
class B {
    func functionB(){
        print("function A in class A")
    }
}
let b: B = .init()
b.functionB() // work
B.functionB() // error
```

**`Instance member 'functionB' cannot be used on type 'B'; did you mean to use a value of this type instead?`**
