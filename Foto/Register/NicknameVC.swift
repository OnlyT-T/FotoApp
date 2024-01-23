//
//  NicknameVC.swift
//  Foto
//
//  Created by Tran Thanh Trung on 22/01/2024.
//

import UIKit

class NicknameVC: UIViewController {
    
    @IBOutlet weak var nicknameTF: UITextField!
    
    @IBOutlet weak var confirmBt: UIButton!
    
    @IBOutlet weak var scrollView: TPKeyboardAvoidingScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp(button: confirmBt, scrollView: scrollView, textField: nicknameTF)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        nicknameTF.becomeFirstResponder()
    }
    
    @IBAction func actionTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        switch sender {
        case confirmBt:
//            let passwordVC = storyboard.instantiateViewController(withIdentifier: "RegisterPasswordVC") as! RegisterPasswordVC
//
//            self.navigationController?.pushViewController(passwordVC, animated: true)
//
//            self.navigationController?.isNavigationBarHidden = true
            
            print("Confirmed Nickname!")
            
        default:
            break
        }
    }
    
}
