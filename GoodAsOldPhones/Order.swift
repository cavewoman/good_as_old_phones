//
//  Order.swift
//  GoodAsOldPhones
//
//  Created by Anna Chan on 6/13/16.
//  Copyright © 2016 Anna Chan. All rights reserved.
//

import UIKit
class Order: NSObject, NSCoding {
    var product: Product?
    
    override init() {
        super.init()
    }
    
    // failable initializer
    required init?(coder aDecoder: NSCoder) {
        self.product = aDecoder.decodeObjectForKey("product") as? Product
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(product, forKey: "product")
    }

}
