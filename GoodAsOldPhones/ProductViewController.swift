//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Anna Chan on 6/4/16.
//  Copyright © 2016 Anna Chan. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = product?.name
       
        if let i = product?.productImage {
            productImageView.image = UIImage(named: i)
        }
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func addToCartPressed(sender: AnyObject) -> Void {
        guard let product = product, let name = product.name, let price = product.price else {
            return
        }
        let alertController = UIAlertController(title: "Added to Cart", message: "You added \(name) item to the cart and it costs $\(price)", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        presentViewController(alertController, animated: true, completion: nil)
    }
}
