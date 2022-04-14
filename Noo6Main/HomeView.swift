//
//  HomeView.swift
//  Noo6Main
//
//  Created by 이재웅 on 2022/04/08.
//

import SwiftUI

struct HomeView: View {
    // 2줄의 title을 편하게 구성하기 위함
    let title: String = """
안녕하세요,
어떤 도움이 필요하신가요?
"""
        
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text(title)
                    .font(.system(size: 30.0, weight: .semibold))
                    .frame(height: 75.0, alignment: .center)
//                    .offset(x: 0, y: -50)
                // List 하단의 Row 잘리는 현상 해결필요
                CategoryList()
                    .frame(height: 650, alignment: .center)
                    .padding(.trailing, -10)
            }
            .padding()

            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: HonorView(),
                        label:{
                            Image(systemName: "archivebox")
                                .resizable()
                                .frame(width: 30, height: 30)
                        })
            )
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
