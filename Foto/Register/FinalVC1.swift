//
//  FinalVC1.swift
//  Foto
//
//  Created by Tran Thanh Trung on 02/03/2024.
//

import UIKit
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore

class FinalVC1: UIViewController {

    @IBOutlet weak var avatarBorder: UIView!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var partnerName: UILabel!
    
    @IBOutlet weak var nextBt: UIButton!
    
    let db = Firestore.firestore()
    
    var getNickname: String?
    
    var getPartnerAvatar: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpFinal(button: nextBt, border: avatarBorder, avatar: avatarImage)
        
        partnerName.text = getNickname
        avatarImage = getPartnerAvatar
    }

    @IBAction func nextTapped(_ sender: Any) {
        print("Next Tap Tap")
        
    }
    
}
