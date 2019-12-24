//
//  MonthlyTrackerViewController.swift
//  savingsApp
//
//  Created by Stephenson Ang on 12/20/19.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class MonthlyTrackerViewController: UIViewController {

    @IBOutlet weak var views: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var daysLeftLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        views.universalViewDesign()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        daysLeftLbl.text = checkForMonth()
        
    }

}

extension MonthlyTrackerViewController {
    
    func checkForMonth() -> String {
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "MMMM dd, yyyy"
        
        let calendar = Calendar.current
        
        if calendar.component(.month, from: date)%2 == 0 {
            return String(31 - calendar.component(.day, from: date))
        } else {
            return String(30 - calendar.component(.day, from: date))
        }
    }
    
}

extension MonthlyTrackerViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpensesTableViewCell") as! ExpensesTableViewCell
        
        cell.expenseDescription.text = "Netflix"
        cell.ExpenseDate.text = "December 20, 2019"
        cell.ExpensePrice.text = "₱650.00"
        
        return cell
    }
    
    
}
