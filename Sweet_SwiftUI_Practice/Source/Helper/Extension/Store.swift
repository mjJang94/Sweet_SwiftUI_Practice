//
//  Store.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/26.
//  Copyright © 2020 장민종. All rights reserved.
//

import Foundation

final class Store{
    var products: [Product]
    
    init(filename: String = "ProductData.json"){
        self.products = Bundle.main.decode(filename: filename, as: [Product].self)
    }
}
