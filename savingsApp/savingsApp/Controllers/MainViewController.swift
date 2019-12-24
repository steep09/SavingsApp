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
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var totalSavedLbl: UILabel!
    @IBOutlet weak var dateTodayLbl: UILabel!
    
    var totalSaved: NSNumber = 245000.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileView.universalViewDesign()
        logsBtn.universalBtnDesign()
        addBtn.universalBtnDesign()
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        // localize to your grouping and decimal separator
        currencyFormatter.locale = Locale.current

        // We'll force unwrap with the !, if you've got defined data you may need more error checking
        let priceString = currencyFormatter.string(from: totalSaved)!
        print(priceString)
        totalSavedLbl.text = priceString
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "MMMM dd, yyyy"
        let dateString = df.string(from: date)
        print(date)
        dateTodayLbl.text = dateString
    }
    
}

extension MainViewController {
    @IBAction func addTotalSavedWasPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "How much is it?", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "-", style: .default, handler: { [weak alert] (_) in
            
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            let gotNumber = Double(self.totalSaved)
            let newNumber = Int(textField!.text!)
            let totalNumber = Double(gotNumber) - Double(newNumber!)
            self.totalSaved = NSNumber(value: totalNumber)
            
            
            let currencyFormatter = NumberFormatter()
            currencyFormatter.usesGroupingSeparator = true
            currencyFormatter.numberStyle = .currency
            // localize to your grouping and decimal separator
            currencyFormatter.locale = Locale.current

            // We'll force unwrap with the !, if you've got defined data you may need more error checking
            let priceString = currencyFormatter.string(from: self.totalSaved)!
            self.totalSavedLbl.text = "\(priceString)"
            
        }))
        alert.addAction(UIAlertAction(title: "+", style: .default, handler: { [weak alert] (_) in
            
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            let gotNumber = Double(self.totalSaved)
            let newNumber = Int(textField!.text!)
            let totalNumber = Double(gotNumber) + Double(newNumber!)
            self.totalSaved = NSNumber(value: totalNumber)
            
            let currencyFormatter = NumberFormatter()
            currencyFormatter.usesGroupingSeparator = true
            currencyFormatter.numberStyle = .currency
            // localize to your grouping and decimal separator
            currencyFormatter.locale = Locale.current

            // We'll force unwrap with the !, if you've got defined data you may need more error checking
            let priceString = currencyFormatter.string(from: self.totalSaved)!
            self.totalSavedLbl.text = "\(priceString)"
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
