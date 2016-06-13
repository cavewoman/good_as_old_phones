//
//  CartTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Anna Chan on 6/13/16.
//  Copyright © 2016 Anna Chan. All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {

    var ordersInCart: [Order]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let product = Product()
        product.name = "1907 Wall Set"
        product.productImage = "phone-fullscreen1"
        product.cellImage = "image-cell1"
        product.price = 59.99
        
        let order = Order()
        order.product = product
        
        ordersInCart = [order]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ordersInCart?.count ?? 0
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CartCell", forIndexPath: indexPath)
        
        let order = ordersInCart?[indexPath.row]
        
        if let order = order {
            cell.textLabel?.text = order.product?.name
            cell.detailTextLabel?.text = String(order.product?.price)
        }
       
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
        
        }
    }
}
