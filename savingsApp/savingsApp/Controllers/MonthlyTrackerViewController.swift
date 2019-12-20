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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        views.universalViewDesign()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension MonthlyTrackerViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpensesTableViewCell") as! ExpensesTableViewCell
        
        cell.expenseDescription.text = "Netflix"
        cell.ExpenseDate.text = "December 20, 2019"
        cell.ExpensePrice.text = "₱650.00"
        
        return cell
    }
    
    
}
