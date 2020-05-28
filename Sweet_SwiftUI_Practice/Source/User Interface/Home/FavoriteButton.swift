//
//  FavoriteButton.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/28.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    
    @EnvironmentObject private var store: Store
    let product: Product
    
    private var imageName: String{
        product.isFavorite ?"hear.fill" : "heart"
    }
    
    var body: some View {
        Button(action: {
            self.store.toggleFavorite(of: self.product)
        }) {
            Image(systemName: imageName)
                .imageScale(.large)
                .foregroundColor(.peach)
                .frame(width: 32, height: 32)
                .onTapGesture {self.store.toggleFavorite(of: self.product)}
        }
    }
}

//struct FavoriteButton_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteButton(product: Product())
//    }
//}
