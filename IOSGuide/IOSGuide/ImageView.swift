//
//  ImageView.swift
//  IOSGuide
//
//  Created by hurdasol on 2022/04/07.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        return GeometryReader {proxy in
            ScrollView(.horizontal){
                HStack(spacing:0){
                    
                    VStack{
                        GuideText()
                        Image("image")
                            .resizable()
                            .frame(width: proxy.size.width, height: proxy.size.height-100)
                            
                    }
                    VStack{
                        GuideText()
                        Image("image")
                            .resizable()
                            .frame(width: proxy.size.width-50, height: proxy.size.height-100)
                            .padding(.horizontal,25)
                    }
                    
                }
            }
                    
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
