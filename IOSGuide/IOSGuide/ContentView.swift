//
//  ContentView.swift
//  IOSGuide
//
//  Created by hurdasol on 2022/04/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                
                ImageView()
                Bottom()
                NavigationLink(destination: EmptyView()){//가이끝 뷰로 넘기기
                    //Text("맨 마지막에서 버튼")
                    
                }.navigationBarTitle("가이드 제목",displayMode: .inline)
                .toolbar{
                    Button(action: {
                        //공유하기 기능 넣기
                    }, label: {
                       Image(systemName: "square.and.arrow.up")
                    })
                    
                }
            }
        }
               
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
