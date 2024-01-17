//
//  LoadingViewController.swift
//  Foto
//
//  Created by Tran Thanh Trung on 16/01/2024.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pushVC()
    }
    
    func pushVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let welcomeVC = storyboard.instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeVC
        
        navigationController?.pushViewController(welcomeVC, animated: true)
//        self.navigationController?.popToViewController(welcomeVC, animated: true)
        
        navigationItem.setHidesBackButton(true, animated: true)
    }
}
