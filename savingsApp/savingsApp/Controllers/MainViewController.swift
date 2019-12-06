//
//  ViewController.swift
//  savingsApp
//
//  Created by Stephenson Ang on 12/5/19.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var totalSavedView: UIView!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var addSavingsBtn: UIButton!
    @IBOutlet weak var logsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalSavedView.universalViewDesign()
        detailsView.universalViewDesign()
        
        addSavingsBtn.universalBtnDesign()
        logsBtn.universalBtnDesign()
    }


}

