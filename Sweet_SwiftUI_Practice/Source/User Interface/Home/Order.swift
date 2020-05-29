//
//  Order.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/29.
//  Copyright © 2020 장민종. All rights reserved.
//

import Foundation


struct Order: Identifiable {
    static var orderSequence = sequence(first: 1) {$0 + 1}
    
    let id: Int
    let product: Product
    let quantity: Int
    
    var price: Int{
        product.price * quantity
    }
}
