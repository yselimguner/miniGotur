//
//  Products.swift
//  Mini Gotur
//
//  Created by Yavuz Güner on 9.04.2022.
//

import Foundation
import UIKit

class Products {
    var productId : Int?
    var productName : String?
    var productImage : String?
    var productPrice : Double?
    
    init() {
        
    }
    
    init(productId: Int, productName: String, productImage: String, productPrice: Double) {
        self.productId = productId
        self.productName = productName
        self.productImage = productImage
        self.productPrice = productPrice
    }
}
