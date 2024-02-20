//
//  RegisterEmailVC.swift
//  Foto
//
//  Created by Tran Thanh Trung on 22/01/2024.
//

import UIKit
import FirebaseAuth

class RegisterEmailVC: UIViewController {

    @IBOutlet weak var backBt: UIButton!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var nextBt: UIButton!
    
    @IBOutlet weak var scrollView: TPKeyboardAvoidingScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp(button: nextBt, scrollView: scrollView, textField: emailTF)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        emailTF.becomeFirstResponder()
    }
    
    @IBAction func actionTapped(_ sender: UIButton) {
        
        switch sender {
        case nextBt:
            print("Next Tapped")
            handleRegister()
            
        case backBt:
            print("Back Tapped")
            
            let previousVC = (self.navigationController?.viewControllers[1])
            
            self.navigationController?.popToViewController(previousVC!, animated: true)
            
            self.navigationController?.isNavigationBarHidden = true
            
        default:
            break
        }
    }
    
    private func handleRegister() {
        let email = emailTF.text ?? ""
        
        showLoading(isShow: true, view: view)
        
        Auth.auth().createUser(withEmail: email, password: "") { [weak self] authResult, err in
            guard let self = self else { return }
            
            showLoading(isShow: false, view: view)
            
            /// success
            guard err == nil else {
                /// Cach xử lý custom error.
                var message = ""
                switch AuthErrorCode.Code(rawValue: err!._code) {
                case .emailAlreadyInUse:
                    message = "Email đã tồn tại"
                case .invalidEmail:
                    message = "Email không hợp lệ"
                default:
                    message = err?.localizedDescription ?? ""
                }
                
                /// Khi lỗi xảy ra thì show alert lỗi.
                let alert = UIAlertController(title: "Lỗi", message: message, preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "Ok", style: .default)
                
                alert.addAction(okAction)
                
                self.present(alert, animated: true)
                return
            }
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let passwordVC = storyboard.instantiateViewController(withIdentifier: "RegisterPasswordVC") as! RegisterPasswordVC
            
            self.navigationController?.pushViewController(passwordVC, animated: true)
            
            self.navigationController?.isNavigationBarHidden = true
        }
    }
    
    @IBAction func handleTFChange(_ sender: UITextField) {
        print("value: \(sender.text ?? "")")
    }
    
}
