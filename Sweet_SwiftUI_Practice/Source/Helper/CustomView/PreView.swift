//
//  PreView.swift
//  Sweet_SwiftUI_Practice
//
//  Created by Paymint on 2020/05/27.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct PreView<V: View>: View {
    enum Device: String, CaseIterable {
        case iPhone8 = "iPhone8"
//        case iPhone11 = "iPhone11"
    }
    
    let source: V //프리뷰에서 표현될 뷰
    var devices: [Device] = [.iPhone8]
    var displayDarkMode: Bool = true  //다크 모드 출력 여부 결정
    
    var body: some View {
        Group {
            ForEach(devices, id: \.self) {
                self.previewSource(device: $0)
            }
            
            if !devices.isEmpty && displayDarkMode{
                self.previewSource(device: devices[0])
                    .preferredColorScheme(.dark)
            }
        }
    }
    
    private func previewSource(device: Device) -> some View{
        source
            .previewDevice(PreviewDevice(rawValue: device.rawValue))
            .previewDisplayName(device.rawValue)
    }
}

struct PreView_Previews: PreviewProvider {
    static var previews: some View {
        PreView(source: Text("Hello, SwiftUI!"))
    }
}
