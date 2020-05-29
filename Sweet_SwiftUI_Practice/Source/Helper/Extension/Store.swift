//
//  Store.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/26.
//  Copyright © 2020 장민종. All rights reserved.
//

import Foundation


final class Store: ObservableObject{
    @Published var products: [Product]
    @Published var orders: [Order] = []
    
    
    init(filename: String = "ProductData.json"){
        self.products = Bundle.main.decode(filename: filename, as: [Product].self)
    }
    
    func placeOrder(product: Product, quantity: Int){
        let nextID = Order.orderSequence.next()!
        let order = Order(id: nextID, product: product, quantity: quantity)
        orders.append(order)
    }
}




extension Store {
    func toggleFavorite(of product: Product){
        guard let index = products.firstIndex(of: product) else {return}
        products[index].isFavorite.toggle()
    }
    
}




