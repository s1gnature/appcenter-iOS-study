//
//  ViewController.swift
//  iOS_Study
//
//  Created by mong on 2020/09/21.
//  Copyright © 2020 mong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 여기에 변수를 추가해요
    var commonValue: Int = 1
    var optinalValue: Int? = 1
    var optinalValueNil: Int! = nil
    
    override func viewDidLoad() {
        // 여기서 변수의 값을 바꿔봅니다
        
        print("Int 자료형인 commonValue의 값은?: \(commonValue)")
        // commonValue는 자료형이 Int 이므로 정상적으로 덧셈이 되겠죠?
        commonValue += 1
        print("Int 자료형인 commonValue의 덧셈 후 값은?: \(commonValue)")
        
        // optinalValue 변수는 지금 optional로 감싸져 있는 상태이기 때문에 일반적인 Int 랑은 다른 자료형이에요!
        // 그래서 빨간색 에러 문장으로 optinal type Int? 는 unwrap, 즉 optinal을 벗겨내고 사용해라! 라고 안내해줍니다
        optinalValue += 1
        
        
        // 그렇다면 optinal 을 벗겨내서 Int 값을 가져와서 덧셈을 해 봅시다!
        // optinal을 해제하는 방법은 총 3가지가 있어요
        // 첫째 강제해제, 변수명 뒤에 !(느낌표)를 붙여서 강제로 값을 추출할 수 있어요!
        print("optinalValue의 값은?: \(optinalValue)")
        print("optinalValue의 값을 강제로 해제한 값은?: \(optinalValue!)")
        optinalValue! += 1
        print("optionalValue의 값을 강제로 해제 후 덧셈한 값은?: \(optinalValue!)")
        
        // 그렇다면 존재하지 않는 값인 nil을 가진 값을 강제해제하면 어떻게 될까요?
//        print(optinalValueNil!)
        // 결과는 런타임 에러가 발생하면서 optinal을 해제하면서 nil을 발견했다고 아무것도 못 하고 앱이 작동을 멈추는 사태가 일어납니다.
        // 실제 사용중인 앱이 이런식으로 멈춰버리면 사용자 입장에서는 난감하겠죠?
        
        
        // 그렇다면 비강제해제를 해서 안전하게 값을 꺼내는 나머지 방법을 알아볼게요!
        // 비강제해제에는 두가지 방법이 있어요
        // 첫째로는 if let ~ 구문을 사용해서 값을 안전하게 가져옵니다!
        if let number = optinalValue {
            print("if let을 이용해 optinal을 해제한 값은?: \(number)")
        }
        // 그렇다면 nil 값을 가진 값을 해제하면 어떻게 될까요?
        if let nilValue = optinalValueNil {
            print("if let을 이용해 optinal을 해제한 nil 값은?: \(nilValue)")
        }else {
            print("if let을 이용해 optinal을 해제했으나 아무런 값이 없어요!")
        }
        // 이렇게 if 문 안에 nil 값이 나오는게 아니라 else 문에 작성된 에러 문구가 나오게 됩니다.
        // 즉 if let ~ 이렇게 외우신다기 보다 if (let nilValue = optinalValueNil) ~~ 이렇게 묶어서 보시는게 이해하는데 도움 되실거에요!
        // 만약 optinalValueNil을 nilValue 변수에 넣는게 성공하면 if 문장을 실행하고, 실패하면 else 문을 실행한다 이렇게 생각하세요!
        
        
        // 이번엔 guard let ~ 구문을 살펴볼까요?
        // guard let ~ 구문은 항상 종료나 에러 처리 문장이 필요해요! return 이나 throw 와 같은 문장이나 보통은 return을 사용하는듯 해요
        guard let nilValue = optinalValueNil else {
            print("guard let을 이용해 optional을 해제했으나 아무런 값이 없어요!")
            return
        }
        // guard let ~ 의 다른점을 파악하셨나요?
        // guard let ~ 을 사용했더니 제일 마지막 문장이 출력되지 않아요!
        // 그렇다면 guard let ~ 구문에서 nil 값이 아닌 진짜 Int 값을 가지고 있는 변수인 optinalValue를 넣으면 어떻게 될까요?
        print("guard let을 이용해 optinal을 해제한 값은?: \(nilValue)")
        print("Optinal의 실습이 끝났습니다!")
        // 이렇게 nilValue의 값과 그 뒤의 문장이 정상적으로 출력이 됩니다!
        
        
        // if let ~ 을 사용한다면 if 문 안에서만 optional을 해제한 값을 사용할 수 있어요!
        // 그러나 guard let ~ 을 사용한다면 optional을 해제한 값을 guard let ~ 이 적힌 문장의 범위 내에서는 자유롭게 사용이 가능합니다
        // 두 구문의 차이를 이해하시고 적절히 사용하신다면 많은 도움이 되실거에요!
        // 처음엔 강제해제가 편하고 좋지만 비강제해제에 익숙해 지시고 이 두 방법을 꼭 익히셔야 예상 못한 상황들에 대해 대처가 가능해집니다!
    }


}

