//
//  CategoryList.swift
//  Noo6Main
//
//  Created by 이재웅 on 2022/04/07.
//

import SwiftUI

struct CategoryList: View {
    
    var body: some View {
        List(guideInfos, id: \.id) { info in
            // ZStack을 이용해 각각의 한 Row에 CatergoryRow와 NavigationLink를 올림
                ZStack {
                    CategoryRow(guideInfo: info)
                        .listRowBackground(Color.white)
                    NavigationLink(destination: Text("\(info.description)의 CategoryView")) {}
                        .frame(width: 0)   // NavigationLink 화살표 제거를 위함 1
                        .opacity(0)        // NavigationLink 화살표 제거를 위함 1
                }
                .padding(EdgeInsets(top: 5, leading: -20, bottom: 5, trailing: -20))
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            .padding(.horizontal, 0)
    }
}

// 임시 가이드 정보 struct
struct GuideInfo: Identifiable {
    let id = UUID()
    let description: String
    let largeTitle: String
    let compledtedNumber: Int
    let allNumber: Int
    let isAllCleared: Bool
}

// 임의 가이드 정보 struct test array
let guideInfos = [
    GuideInfo(description: "아이폰 초보자 가이드", largeTitle: "아이폰이 처음이신가요?", compledtedNumber: 4, allNumber: 4, isAllCleared: true),
    GuideInfo(description: "알면 유용한 기능", largeTitle: "알림을 없애볼까요?", compledtedNumber: 0, allNumber: 4, isAllCleared: false),
    GuideInfo(description: "캘린더", largeTitle: "일정을 관리해볼까요?", compledtedNumber: 0, allNumber: 4, isAllCleared: false),
    GuideInfo(description: "사진", largeTitle: "사진을 편집해볼까요?", compledtedNumber: 1, allNumber: 4, isAllCleared: false),
    GuideInfo(description: "건강", largeTitle: "건강 데이터를 확인할까요?", compledtedNumber: 4, allNumber: 4, isAllCleared: true),
    GuideInfo(description: "카메라", largeTitle: "다양한 사진을 찍어볼까요?", compledtedNumber: 0, allNumber: 4, isAllCleared: false),
    GuideInfo(description: "메모", largeTitle: "메모장이 필요하신가요?", compledtedNumber: 0, allNumber: 4, isAllCleared: false)
]

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
