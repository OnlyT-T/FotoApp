//
//  SetUp.swift
//  Foto
//
//  Created by Tran Thanh Trung on 22/01/2024.
//

import Foundation
import UIKit

public func setUp(button: UIButton, scrollView: UIScrollView, textField: UITextField) {
// Set up rounded corner for button
    button.layer.cornerRadius = button.frame.size.height/2
    
// Set up for Scroll View
    scrollView.isScrollEnabled = false
    scrollView.showsHorizontalScrollIndicator = false
    
// Set up for Text Field
    textField.layer.cornerRadius = 18.0
}
