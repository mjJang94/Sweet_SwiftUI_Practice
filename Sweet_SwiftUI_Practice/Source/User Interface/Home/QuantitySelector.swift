//
//  QuantitySelector.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/28.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct QuantitySelector: View {
    
    @Binding var quantity: Int
    var range: ClosedRange<Int> = 1...20 //수량 선택 가능 범위
    private let softFeedback = UIImpactFeedbackGenerator(style: .soft)
    private let rigidFeedback = UIImpactFeedbackGenerator(style: .rigid)
    
    var body: some View {
        HStack{
            
            Button(action: {self.changeQuantity(-1) }) {
                Image(systemName: "minus.circle.fill")
                    .imageScale(.large)
                    .padding()
            }.foregroundColor(Color.gray.opacity(0.5))
            
            Text("\(quantity)")
                .bold()
                .font(Font.system(.title, design: .monospaced))
                .frame(minWidth: 40, maxWidth: 60)
            
            Button(action: { self.changeQuantity(1) }) {
                Image(systemName: "plus.circle.fill")
                    .imageScale(.large)
                    .padding()
            }
            .foregroundColor(Color.gray.opacity(0.5))
        }
    }
    
    private func changeQuantity(_ num: Int){
        if range ~= quantity + num{
            quantity += num
            softFeedback.prepare()
            softFeedback.impactOccurred(intensity: 5)
        }else{
            rigidFeedback.prepare()
            rigidFeedback.impactOccurred()
        }
    }
}



struct QuantitySelector_Previews: PreviewProvider {
    
    static var previews: some View {
        Group{
            QuantitySelector(quantity: .constant(1))
            QuantitySelector(quantity: .constant(10))
            QuantitySelector(quantity: .constant(20))
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
