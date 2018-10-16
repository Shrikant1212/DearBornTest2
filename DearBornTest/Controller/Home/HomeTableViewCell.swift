//
//  HomeTableViewCell.swift
//  DearBornTest
//
//  Created by shrikant upadhyay on 16/10/18.
//  Copyright © 2018 shrikant upadhyay. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell{
    

    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var contentCollectionVw: UICollectionView!
    @IBOutlet var viewBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        contentCollectionVw.dataSource = self
        contentCollectionVw.delegate = self
        titleLbl.setMinimumFont()
        viewBtn.titleLabel?.setMinimumFont()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func viewAction(_ sender: Any) {
    }
    
}
extension HomeTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: contentCollectionVw.frame.width*0.5, height: contentCollectionVw.frame.height)
    }
    
    // Handels interSpacing betweens cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(4)
    }
}
