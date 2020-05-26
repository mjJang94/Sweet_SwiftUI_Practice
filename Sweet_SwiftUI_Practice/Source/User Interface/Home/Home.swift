//
//  ContentView.swift
//  Sweet_SwiftUI_Practice
//
//  Created by 장민종 on 2020/05/25.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct Home: View {
   
    
    var body: some View {
        VStack {
            ProductRow(product: ProductSamples[0])
            ProductRow(product: ProductSamples[1])
            ProductRow(product: ProductSamples[2])
        
        }
        
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
