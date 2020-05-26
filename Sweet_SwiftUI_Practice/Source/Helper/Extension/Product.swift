//
//  Product.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/26.
//  Copyright © 2020 장민종. All rights reserved.
//

import Foundation

let ProductSamples = [
    Product(name:"나는야 무화과", imageName: "fig", price: 3100, description: "소화가 잘되고 변비에 좋은 달달한 국내산 무화가예요. 고기와 찰떡궁합!"),
    Product(name:"으엑 퉤 레몬", imageName: "lemon", price: 2900, description: "비타민C도 많고, 많이 신 레몬.. 누가먹죠?"),
    Product(name:"나의 라임 오렌지나무", imageName: "lime", price: 2100, description: "라임은 뭔가요 먹는건가요?"),
]


struct Product{
    let name: String
    let imageName: String
    let price: Int
    let description: String
    var isFavorite: Bool = false
}
