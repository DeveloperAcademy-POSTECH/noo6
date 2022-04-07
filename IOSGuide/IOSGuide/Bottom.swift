//
//  Bottom.swift
//  IOSGuide
//
//  Created by hurdasol on 2022/04/07.
//

import SwiftUI

struct Bottom: View {
    var body: some View {
        
            VStack {
                HStack{
                    ZStack{
                        Circle()
                            .strokeBorder(Color(hue: 1.0, saturation: 0.005, brightness: 0.84), lineWidth: 1)
                            .frame(width: 30, height: 30)
                    Button(action:{
                    
                },label:{
                    Image(systemName: "speaker.wave.2.fill")
                })
                    .foregroundColor(.gray)
                    }
                Spacer()
                    ZStack{
                        Circle()
                            .strokeBorder(.gray,lineWidth: 1)
                            .frame(width: 30, height: 30)
                    Button(action:{
                        
                    },label:{
                        Image(systemName: "repeat")
                    })
                    .foregroundColor(.gray)
                    }
                }.padding(.horizontal)
                ProgressView(value: 0.2)
                HStack {
                    Button("< 이전 단계"){
                    
                    }
                    Spacer()
                    Text("3")
                    Text("/")
                    Text("7")
                    Spacer()
                Button("다음 단계 >") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct Bottom_Previews: PreviewProvider {
    static var previews: some View {
        Bottom()
    }
}
