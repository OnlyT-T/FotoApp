//
//  LoginPasswordVC.swift
//  Foto
//
//  Created by Tran Thanh Trung on 19/01/2024.
//

import UIKit
import PasswordTextField

class LoginPasswordVC: UIViewController {
    
    @IBOutlet weak var passwordTF: PasswordTextField!
    
    @IBOutlet weak var scrollView: TPKeyboardAvoidingScrollView!
    
    @IBOutlet weak var backBt: UIButton!
    
    @IBOutlet weak var nextBt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp(button: nextBt, scrollView: scrollView, textField: passwordTF)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        passwordTF.becomeFirstResponder()
    }
    
    @IBAction func actionTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        switch sender {
        case nextBt:
//            let emailVC = storyboard.instantiateViewController(withIdentifier: "EmailVC") as! LoginEmailVC
//
//            self.navigationController?.pushViewController(emailVC, animated: true)
//
//            self.navigationController?.isNavigationBarHidden = true
            print("Next Tapped")
            
        case backBt:
            print("Back Tapped")
            
            let previousVC = (self.navigationController?.viewControllers[2])

            self.navigationController?.popToViewController(previousVC!, animated: true)
            
            self.navigationController?.isNavigationBarHidden = true
            
        default:
            break
        }    }
    
}

