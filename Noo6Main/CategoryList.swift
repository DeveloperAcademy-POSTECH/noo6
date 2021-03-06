//
//  CategoryList.swift
//  Noo6Main
//
//  Created by 이재웅 on 2022/04/07.
//

import SwiftUI

struct CategoryList: View {
    
    var body: some View {
        List(categorydata, id: \.id) { info in
            // ZStack을 이용해 각각의 한 Row에 CatergoryRow와 NavigationLink를 올림
            ZStack {
                CategoryRow(categoryStorage: info)      // 카테고리 UI 뷰
                    .listRowBackground(Color.white)
                // 클릭시 해당 가이드 카테고리로 이동 링크
                NavigationLink(destination: CategoryView(guideName: info.categoryTitle, listInfos: info)) {}
            }
            .padding(EdgeInsets(top: 5, leading: -10, bottom: 5, trailing: -10))
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 0)
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
