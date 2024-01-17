//
//  WelcomeVC.swift
//  Foto
//
//  Created by Tran Thanh Trung on 16/01/2024.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var loginBt: UIButton!
    
    @IBOutlet weak var signInBt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpBt()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setUpBt() {
        loginBt.layer.cornerRadius = loginBt.frame.size.height/2
    }
    
    @IBAction func actionPressed(_ sender: Any) {
        
    }
    
}
