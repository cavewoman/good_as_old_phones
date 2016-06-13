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
        print("Button Tapped")
    }
}
