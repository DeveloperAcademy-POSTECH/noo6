//
//  HonorDetailView.swift
//  Noo6Main
//
//  Created by Seyoung Choi on 2022/04/08.
//


import SwiftUI

struct HonorDetailView : View {
    var body: some View{
        VStack{
            Text("\(HonorDetialView1_1.title)")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Image("\(HonorDetialView1_1.image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .padding()
            Text("\(HonorDetialView1_1.text)")
                .font(.system(size: 20))
                .frame(width: 358, height: 120)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
            Spacer()
            ButtonView()
            Spacer()
        }
    }
}


// HonorDetialView 정보 구조 (테스트용)
struct HonorDetailInfo: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let text: String
}


let HonorDetialView1_1 = HonorDetailInfo(title: "당신은 사진찍기 전문가!", image: "Test" , text: "아이폰으로 사진 찍는 법을 전부 배웠습니다! 직접 소중한 사진들을 남겨보세요.")



//저장하기 버튼 뷰입니다
struct ButtonView: View {
    var body: some View {
            Button(action: {//사진 저장
            }){Text("이미지 저장하기")
                .frame(width: 352, height: 50)
                .font(.system(size:20, weight: .regular))
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(12)
        }
    }
}


struct HonorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HonorDetailView()
    }
}
