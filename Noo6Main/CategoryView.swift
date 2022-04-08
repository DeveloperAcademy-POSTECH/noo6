//
//  categoryView.swift
//  Noo6Main
//
//  Created by Eunbi Han on 2022/04/07.
//

import Foundation
import SwiftUI

struct CategoryView : View {

    var body: some View{
        VStack {
            NavigationView{
                VStack{
                    // 임시 안내 문구 삽입 -> 데이터 받아온 후 데이터에 맞는 문구로 수정 필요
                    Text("아이폰 초보자 가이드에서 \n어떤 가이드를 받아 볼까요?")
                        .frame(width: 342)
                        .font(.system(size: 30))
                        .padding(.bottom, 40)
                        .multilineTextAlignment(.center)
                    
                    // 받은 리스트(contentInfos)의 정보에 따라 List에 이동할 버튼 생성
                    List(contentInfos, id: \.id) {
                        info in
                        // 버튼 누를 시 임시로 EmptyView로 이동 -> merge 후 가이드뷰로 이동하도록 수정 필요
                        NavigationLink(destination: EmptyView()){
                            ContentList(contentInfo: info)
                                .listRowBackground(Color.white)
                                .listRowSeparator(.hidden)
                        }
                        .listRowSeparator(.hidden)
                        
                    }
                    .listStyle(.plain)
                    .background(Color.white)
                    
                    Spacer() // 화면 상단에 List를 보여주기 위해 공백 삽입
                }
                
            }
            
        }.padding([.leading, .trailing], 16)
    }
    
}

// List에 들어갈 Array의 구조
struct ContentInfo: Identifiable {
    let id = UUID()
    let title: String
    let isComplete: Bool

}
 
// List에 들어갈 Array에 Test 데이터 넣기
let contentInfos = [
    ContentInfo(title: "잠금화면 제스처", isComplete: false),
    ContentInfo(title: "앱 페이지의 기본 제스처", isComplete: true),
    ContentInfo(title: "홈 화면의 기본 제스처", isComplete: false),
    ContentInfo(title: "홈 화면을 편집하는 방법", isComplete: false)
]

// List에 들어갈 카테고리별 컨텐츠 목록 (버튼 + 체크아이콘)
struct ContentList : View {
    var contentInfo : ContentInfo
    var body: some View{
        Button(action: {}){
            HStack{
                Text("\(contentInfo.title)")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                    .padding(.leading, 20)
                Spacer()
                if contentInfo.isComplete{  // 해당 컨텐츠를 이전에 끝까지 완료했는지 확인
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                        .padding()
                }
            }
        }.frame(width: 320, height: 78)
            .cornerRadius(10).background(Color.white).cornerRadius(10).shadow(color: Color.gray, radius: 3, x: 0, y: 0)
        
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
