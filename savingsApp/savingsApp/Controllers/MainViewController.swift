//
//  ViewController.swift
//  savingsApp
//
//  Created by Stephenson Ang on 12/5/19.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var logsBtn: UIButton!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var totalSavedLbl: UILabel!
    @IBOutlet weak var dateTodayLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileView.universalViewDesign()
        logsBtn.universalBtnDesign()
        
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "MMMM dd, yyyy"
        let dateString = df.string(from: date)
        dateTodayLbl.text = dateString
    }


}

