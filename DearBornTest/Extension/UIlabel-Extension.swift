//
//  UIlabel-Extension.swift
//  DearBornTest
//
//  Created by shrikant upadhyay on 16/10/18.
//  Copyright © 2018 shrikant upadhyay. All rights reserved.
//

import Foundation
import UIKit
extension UILabel{

    func setMinimumFont() {
        
        switch UIDevice.current.screenType {
            
        case .iPhones_4_4S:
            self.font = UIFont.systemFont(ofSize: 10)
            
        case .iPhones_5_5s_5c_SE:
            self.font = UIFont.systemFont(ofSize: 12)
            
        case .iPhones_6_6s_7_8:
            self.font = UIFont.systemFont(ofSize: 14)
            
        case .iPhones_6Plus_6sPlus_7Plus_8Plus:
            self.font = UIFont.systemFont(ofSize: 16)
            
        case .iPhone_XSMax:
            self.font = UIFont.systemFont(ofSize: 20)
       
        case .iPhones_X_XS:
            self.font = UIFont.systemFont(ofSize: 18)
        
        case .iPhone_XR:
            self.font = UIFont.systemFont(ofSize: 18)
        
        default:
             self.font = UIFont.systemFont(ofSize: 30)
            
        }
        
//        self.numberOfLines = 0
//        self.adjustsFontSizeToFitWidth = true
//        self.minimumScaleFactor = 0.5
    }
    
    
    
    
}
