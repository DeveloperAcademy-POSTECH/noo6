//
//  ClearView.swift
//  Noo6Main
//
//  Created by 최윤석 on 2022/04/08.
//

import SwiftUI

func shareButton() {
        let url = URL(string: "https://developer.apple.com/kr/")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)

        UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
}

struct ClearView: View {
    var body: some View {
        VStack{
            VStack{
                Text("사진 편집 방법을 배웠습니다.")
                    .font(.title)
                Text("이제 멋진 프로필 사진을")
                    .font(.title)
                Text("만드실 수 있습니다!")
                    .font(.title)
            }
            .padding()
            
            Image("어르신짤1")
                .padding()
            
            Button(action: {
                print("가이드 카테고리로 갑니다.")
            }, label: {
                NavigationLink(destination: ContentView()){
                    Text("다른 가이드 배우기")
                        .foregroundColor(Color.white)
                }
            })
            .frame(width: 300, height: 18, alignment: .center)
            .padding()
            .background(Color(red: 0, green: 0.5, blue: 1))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
            
            
            Button(action: shareButton){
                Text("이미지를 다른 사람에게 공유하기")
                    .foregroundColor(Color.white)
            }
            .frame(width: 300, height: 18, alignment: .center)
            .padding()
            .background(Color(red: 0, green: 0.5, blue: 1))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
            
            Button(action: {
                print("홈으로 갑니다.")
            }, label: {
                NavigationLink(destination: ContentView()){
                    Text("홈으로 돌아가기")
                        .foregroundColor(Color.blue)
                }
            })
            .padding()
        }
        .navigationBarHidden(true)
    }
}


struct ClearView_Previews: PreviewProvider {
    static var previews: some View {
        ClearView()
    }
}
