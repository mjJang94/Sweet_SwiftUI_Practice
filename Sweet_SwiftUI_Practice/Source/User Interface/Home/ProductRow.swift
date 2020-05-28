//
//  ProductRow.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/26.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    
    let product: Product
    
    var body: some View {
        HStack{
//            Group{
//                ForEach(ProductSamples){
//                    ProductRow(product: $0)
//                }
//                
//                ProductRow(product: ProductSamples[0])
//                    .preferredColorScheme(.dark)
//            }
//            .padding()
//            .previewLayout(.sizeThatFits)
            
            productImage
            productDescription
            
        }.frame(height: 150)
            .background(Color.primary.colorInvert())
            .cornerRadius(6)
            .shadow(color: Color.primaryShadow, radius: 1, x:2, y: 2)
            .padding(.vertical, 8)
    }
}

private extension ProductRow{
    
    var productImage: some View{
        
        GeometryReader {_ in
            Image(self.product.imageName)
                .resizable()
                .scaledToFill()
                .frame(width:140)
                .clipped()
        }
    }
    
    
    var productDescription: some View{
        VStack(alignment: .leading){
            Text(product.name)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 6)
            
            Text(product.description)
                .font(.footnote)
                .foregroundColor(Color.secondaryText)
            
            Spacer()
            
            footerView
        }
        .padding(.top, 20)
        
    }
    
    var footerView: some View{
        HStack(spacing: 0){
            Text("₩").font(.footnote)+Text("\(product.price)").font(.headline)
            
            Spacer()
            
//            Image(systemName: "heart")
//                .imageScale(.large)
//                .foregroundColor(Color.peach)
//                .frame(width: 32, height: 32)
            
            FavoriteButton(product: product)
            
            Image(systemName: "cart")
                .foregroundColor(Color.peach)
                .frame(width: 32, height: 32)
            
        }
        .padding([.leading, .bottom], 12)
        .padding([.top, .trailing])
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: ProductSamples[0])
    }
}
