//
//  ViewController.swift
//  DearBornTest
//
//  Created by shrikant upadhyay on 16/10/18.
//  Copyright © 2018 shrikant upadhyay. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var contentTblVW: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        contentTblVW.dataSource = self
        contentTblVW.delegate = self
        
        contentTblVW.estimatedRowHeight = 1000
        contentTblVW.rowHeight = UITableView.automaticDimension
        
    }


}
extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height*0.2
    } 
    
}
