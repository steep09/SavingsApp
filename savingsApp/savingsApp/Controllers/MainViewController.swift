//
//  ViewController.swift
//  savingsApp
//
//  Created by Stephenson Ang on 12/5/19.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var logsBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileView.universalViewDesign()
        logsBtn.universalBtnDesign()
        addBtn.universalBtnDesign()
    }


}

