//
//  WelcomeViewController.swift
//  savingsApp
//
//  Created by Stephenson Ang on 1/3/20.
//  Copyright © 2020 Stephenson Ang. All rights reserved.
//

import UIKit
import Firebase

class WelcomeViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    @IBAction func signupbtnWasPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "SignupViewController") as! SignupViewController
        
        self.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func LoginBtnWasPressed(_ sender: Any) {
        
        print("I WAS PRESSED")
        guard let homeView = self.storyboard?.instantiateViewController(withIdentifier: "nav") as? UINavigationController else { return }
        homeView.modalPresentationStyle = .fullScreen
        homeView.definesPresentationContext = true
        self.show(homeView, sender: self)
    }
}
