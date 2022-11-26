//
//  UserCircleUIImageView.swift
//  MyProfie
//
//  Created by Gökçe Kahraman on 25.11.2022.
//

import UIKit

extension UIImageView{
    
    func roundedImage(){
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderColor = UIColor.systemBlue.cgColor
        self.layer.borderWidth = 2
        self.clipsToBounds = true
    }
    
}
