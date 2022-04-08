//
//  ImageView.swift
//  IOSGuide
//
//  Created by hurdasol on 2022/04/07.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
       /* return GeometryReader {proxy in
            ScrollView(.horizontal){
                HStack(spacing:0){
                    VStack(spacing:0){
                        Text("this is Guide 자동으로 중앙정렬, 줄 바꿈을 하지만 2줄까지가 예쁨.")
                            .frame(maxWidth: 350)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                        Image("image1")
                            .resizable()
                            .frame(width: proxy.size.width, height: proxy.size.height-100)
                    }
                    
                }
            }
        }*/
        ScrollView(.horizontal, showsIndicators: false){
            
            
                    HStack(spacing:0){
                        
                        ForEach(guidelists, id: \.self){guide in
                            VStack(spacing:0){
                                Text(guide.explain)
                                Image(guide.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:360,height: 600)
                            }
                            
                            
                            
                        }
                        .padding()
                    }
            ScrollViewReader{guide in
                Button("다음 단계 >") {withAnimation(.spring()){
                    guide.scrollTo(1,anchor: .top)
                }
            }
            }
                    
            
           
    }
}
}
struct GuideList: Identifiable, Hashable{//가이드리스트 구조체, 이미지와 설명넣기
    let id = UUID()
    let image: String
    let explain: String
}

let guidelists = [
    GuideList(image: "image1",explain: "설명란입니다1." ),
    GuideList(image: "image2",explain: "설명란입니다2." ),
    GuideList(image: "image3",explain: "설명란입니다3." )
    //똑같이 리스트로 추가
]



struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
