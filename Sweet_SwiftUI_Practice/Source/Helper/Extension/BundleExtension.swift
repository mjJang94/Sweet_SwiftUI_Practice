//
//  BundleExtension.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/26.
//  Copyright © 2020 장민종. All rights reserved.
//

import Foundation


extension Bundle {
    
    func decode<T: Decodable>(filename: String, as type: T.Type) -> T {
        guard let url = self.url(forResource: filename, withExtension: nil) else {
            fatalError("번틀에 \(filename)이 없습니다.")
        }
        
        guard let data = try? Data(contentsOf: url)else{
            fatalError("\(url)로부터 데이터를 불러올 수 없습니다.")
        }
        
        guard let decodedData = try? JSONDecoder().decode(T.self, from: data)
            else{
                fatalError("데이터 복호하 실패")
        }
        return decodedData
    }
}
