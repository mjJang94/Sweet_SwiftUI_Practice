//
//  ContentView.swift
//  Sweet_SwiftUI_Practice
//
//  Created by 장민종 on 2020/05/25.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    let store: Store
    
    var body: some View {
        VStack {
            
            NavigationView{
                List(store.products){ product in
                    NavigationLink(destination: Text("상세 정보")){
                    ProductRow(product: product)
                    }
                }.navigationBarTitle("과일마트")
            }
        }
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(store: Store())
    }
}
