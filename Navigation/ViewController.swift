//
//  ViewController.swift
//  Navigation
//
//  Created by 이충현 on 2021/01/29.
//

import UIKit

// EditViewController에서 프로토콜로 작성한 EditDeleger을 넣어 상속을 받음
// 프로토콜을 상속받으면 프로토콜에서 정의한 함수를 무조건 만들어야함 그렇지 않으면 에러 발생
class ViewController: UIViewController, EditDelegate {
  
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")

    var isOn = true
    
    @IBOutlet var txMessage: UITextField!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 스토리보드에 추가한 오브젝트 이미지뷰에 위에서 선언한 imgOn을 대입
        // 앱시작시 imgOn 이미지가 보일 것임
        imgView.image = imgOn
        
    }
    
    //세그웨이를 이용하여 화면을 전환하기 위해 prepare 함수 사용
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let editViewController = segue.destination as! EditViewController
        
        // 세그웨이의 아이디에 따라 다르게 동작시키기 위해 if문 사용
        if segue.identifier == "editButton" {
            //버튼을 눌렀을때
            
            //세그웨이 아이디가 editButton일 경우
            // segue : use button 문자열 전송
            editViewController.textWayValue = "segue : use button"
        }else if segue.identifier == "editBarButton" {
            //바 버튼을 눌렀을때
            
            //세그웨이 아이디가 editBarButton 일 경우
            // segue : use Bar Button 문자열 전송
            editViewController.textWayValue = "segue : use Bar Button"
        }
        editViewController.textMessage = txMessage.text!
        
        //prepare 함수에서 editViewController 수정화면의 ison에 메인화면의 상태를 전달한다
        editViewController.isOn = isOn
        editViewController.delegate = self
    }

    // didMessageEditDone는 에디트 뷰 컨트롤러에서 함수를 호출하며 메세지를 전달하는 역할을 함
    // 이 메세지는 스트링 값을 메인화면의 텍스트 필드에 텍스트로 보여줌
    // 즉 수정화면 데이터를 메인화면에 전달하여 보여주는 것
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn {
            imgView.image = imgOn
            self.isOn = true
        } else {
            imgView.image = imgOff
            self.isOn = false
        }
        
    }
    
}

