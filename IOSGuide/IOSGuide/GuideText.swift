//
//  GuideText.swift
//  IOSGuide
//
//  Created by hurdasol on 2022/04/07.
//

import SwiftUI

struct GuideText: View {
    var body: some View {
        VStack{
            Text("this is Guide 자동으로 중앙정렬, 줄 바꿈을 하지만 2줄까지가 예쁨.")
                .frame(maxWidth: 350)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
        
    }
}

struct GuideText_Previews: PreviewProvider {
    static var previews: some View {
        GuideText()
    }
}
