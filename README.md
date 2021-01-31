# 내비게이션 컨트롤러(Navigation Controller)란?
  - 탭 바 컨트롤러(Tab Bar Controller)는 보통 각 화면이 서로 연관성이 없는 경우가 많은데,  
    화면과 화면을 전환할 때 연관성이 많거나 데이터를 주고받아야 하는 경우에는 ***내비게이션 컨트롤러*** 를 사용한다.  
  - 내비게이션 컨트롤러를 이용하면 한 화면에서 다른 화면으로 쉽게 전환할 수 있다.
  
<hr/>  
 
## [알아두면 좋아유] 
## 코코아 터치 클래스(Cocoa Touch Class)란?
  - 코코아(Cocoa)란 애플 환경에서 맥이나 iOS용 애플리케이션을 제작하기 위한 도구들의 모음
  - 보통 UI(User Interface, 유저 인터페이스) 기능들을 많이 사용하고 있다.
  - 맥과 다르게 iOS의 경우 터치와 관련된 여러 기능들이 추가되었는데 이를 지원하기 위한 도구들의 모음이 코코아 터치(Cocoa Touch)이다.
  - UI를 iOS용으로 변경하고 다양한 ***터치 관련 기능을 클래스***로 만들어 놓은 것은 코코아 터치 클래스(Cocoa Touch Class)이다.
  - 뷰 컨트롤러에 관한 클래스도 이 코코아 터치 클래스에 있다.
  
<hr/>

## 스위프트 문법} 프로토콜(Protocol)이란?
  - 프로토콜(Protocol)이란 특정 객체가 갖추어야 할 기능이나 속성에 대한 설계도
  - 프로토콜은 실질적으로 아무런 내용이 없다. 다만, 단순한 선언 형태만 갖는다.
  - 실질적인 내용은 이 프로토콜을 이용하는 객체에서 정의한다.
~~~swift
  예를들어 계산기를 만들때, 계산기에 덧셈과 뺄셈이 꼭 있어야만 한다면 프로토콜로 만들 수 있다.  
  
  protocol CalculatorProtocal {
    func add(op1 : Int, op2 : Int) -> Int
    func sub(op1 : Int, op2 : Int) -> Int
  }
  
  이렇게 계산기 프로토콜을 만들었다면 이 계산기 프로토콜을 상속받는 클래스는 반드시 add 함수와 sub함수를 만들어야 한다.
  그렇지 않으면 에러가 발생한다.
  
  class SimpleCalculator : CalculatorProtocal { 
      func add(op1 : Int, op2 : Int) -> Int {
          return op1 + op2
      }
      func sub(op1 : Int, op2 : Int) -> Int {
          return op1 - op2
      }
  }
  ~~~
  - 프로토콜에 대한 자세한 설명은 12. 테이블 뷰 컨트롤러 이용해 할 일 목록 만들기 에서 진행  
  <hr/>
