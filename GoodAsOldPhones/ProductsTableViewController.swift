//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Anna Chan on 6/5/16.
//  Copyright © 2016 Anna Chan. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames {
          return pNames.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        let productName = productNames?[indexPath.row]
        if let pName = productName {
            cell.textLabel?.text = pName
        }
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            let cell = sender as? UITableViewCell
            if let c = cell {
                let indexPath = tableView.indexPathForCell(c)
                if let ip = indexPath {
                    let productName = productNames?[ip.row]
                    productVC?.productName = productName
                }
            }
        }
    }
}
