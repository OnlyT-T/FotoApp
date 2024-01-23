//
//  LoadingViewController.swift
//  Foto
//
//  Created by Tran Thanh Trung on 16/01/2024.
//

import UIKit
import AMDots

class LoadingViewController: UIViewController {
    
    private var dotsView: AMDots!
    
    @IBOutlet weak var loadingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showLoading(isShow: true)

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            
            self.showLoading(isShow: false)
            
            self.pushVC()
        }
    }
    
    func showLoading(isShow: Bool) {
        
        dotsView = AMDots(frame: CGRect(x: 0, y: 0, width: 100, height: 50),
                              colors: [#colorLiteral(red: 0.4432783723, green: 0.3698398471, blue: 0.9178406596, alpha: 1), #colorLiteral(red: 0.4432783723, green: 0.3698398471, blue: 0.9178406596, alpha: 1), #colorLiteral(red: 0.4432783723, green: 0.3698398471, blue: 0.9178406596, alpha: 1), #colorLiteral(red: 0.4432783723, green: 0.3698398471, blue: 0.9178406596, alpha: 1), #colorLiteral(red: 0.4432783723, green: 0.3698398471, blue: 0.9178406596, alpha: 1)])
        dotsView.backgroundColor = .none
        dotsView.animationType = .scale
        dotsView.animationDuration = 0.5
        dotsView.aheadTime = 0.4
        loadingView.addSubview(dotsView)
        
        if isShow {
            dotsView.start()
        } else {
            dotsView.stop()
            dotsView.hidesWhenStopped = true
        }
    }
    
    func pushVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let welcomeVC = storyboard.instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeVC
        
        self.navigationController?.pushViewController(welcomeVC, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
}
