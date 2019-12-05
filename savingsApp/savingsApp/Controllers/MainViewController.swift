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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalSavedView.backgroundColor = .white
        totalSavedView.layer.cornerRadius = 10.0
        totalSavedView.layer.shadowRadius = 10.0
        totalSavedView.layer.shadowOpacity = 0.8
        
        detailsView.backgroundColor = .white
        detailsView.layer.cornerRadius = 10.0
        detailsView.layer.shadowRadius = 10.0
        detailsView.layer.shadowOpacity = 0.8
    }


}

