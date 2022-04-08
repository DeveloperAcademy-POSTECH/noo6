//
//  categoryView.swift
//  Noo6Main
//
//  Created by Eunbi Han on 2022/04/07.
//

import Foundation
import SwiftUI

struct categoryView : View {
    var titleList : [String] = ["첫번째 제목", "두번째 제목", "세번째 제목", "네번째 제목"]
    var body: some View{
        VStack {
            
            HStack {
                NavigationView{
                    VStack{
                        Text("아이폰 초보자 가이드에서 \n어떤 가이드를 받아 볼까요?")
                            .font(.system(size: 30))
                        ContentButton(title: "잠금화면 제스처")
                            .font(.system(size: 24))
                        
                        Spacer()
                    }
                    
                    
                }

            }
            
            
            
        }.padding([.leading, .trailing], 16)
    }
    
    
}


struct ContentButton : View{
    var title : String = ""

    var body: some View{
        Button(action: signIn){
            Text("\(title)")
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
        }
        //.buttonStyle(.borderedProminent)
    }
}

struct categoryView_Previews: PreviewProvider {
    static var previews: some View {
        categoryView()
    }
}
