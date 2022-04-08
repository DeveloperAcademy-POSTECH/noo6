//
//  GuideScrollView.swift
//  IOSGuide
//
//  Created by hurdasol on 2022/04/07.
//

import SwiftUI
//크기가 제멋대로인게 이상함... 그래서 안씀
struct GuideScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:0){
                ImageView()
                    .frame(width: 390, height: 650)
                ImageView()
                    .frame(width: 390, height: 650)
                
            }
        }
    }
}



struct GuideScrollView_Previews: PreviewProvider {
    static var previews: some View {
        GuideScrollView()
    }
}
