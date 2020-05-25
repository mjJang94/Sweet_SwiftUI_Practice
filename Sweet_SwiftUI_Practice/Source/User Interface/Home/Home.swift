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
    HStack{
        Apple()
        VStack{
            Text("사과")
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 6)
            
            Text("부제")
                .font(.footnote)
                .foregroundColor(.secondary)
                
            Spacer()
            
            HStack(spacing: 0){
                Text("$").font(.footnote)+Text("2.1").font(.headline)
                
                Spacer()
                
                Image(systemName: "heart")
                    .imageScale(.large)
                    .foregroundColor(Color("peach"))
                    .frame(width: 32, height: 32)
                
                Image(systemName: "cart")
                .foregroundColor(Color("peach"))
                    .frame(width: 32, height: 32)
                
            }
            .padding([.leading, .bottom], 12)
            .padding([.top, .trailing])
        }
    }.frame(height: 150)
        .background(Color.primary.colorInvert())
    .cornerRadius(6)
        .shadow(color: Color.primary.opacity(0.33), radius: 1, x:2, y: 2)
        .padding(.vertical, 8)
   
    }
}


struct Apple: View {
    var body: some View{
     Image("apple")
       .resizable()
       .scaledToFill()
           .frame(width:140)
           .clipped()
    }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    Home()
  }
}
