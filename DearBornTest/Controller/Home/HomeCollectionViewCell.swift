//
//  HomeCollectionViewCell.swift
//  DearBornTest
//
//  Created by shrikant upadhyay on 16/10/18.
//  Copyright © 2018 shrikant upadhyay. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var numOfQuesLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLbl.setMinimumFont()
        numOfQuesLbl.setMinimumFont()
    }
    
}
