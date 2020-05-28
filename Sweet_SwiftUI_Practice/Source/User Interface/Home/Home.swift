//
//  ContentView.swift
//  Sweet_SwiftUI_Practice
//
//  Created by 장민종 on 2020/05/25.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject private var store: Store
    
    var body: some View {
        VStack {
    
            NavigationView{
                List(store.products){ product in
                    NavigationLink(destination: ProductDetailView(product: product)){
                        ProductRow(product: product)
                    }
                }.navigationBarTitle("과일마트")
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
            PreView(source: Home())
        .environmentObject(Store())
//        Home(store: Store())
    }
}
