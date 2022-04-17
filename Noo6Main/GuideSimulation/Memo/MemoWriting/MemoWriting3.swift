//
//  MemoWriting3.swift
//  Test
//
//  Created by 이재웅 on 2022/04/11.
//

import SwiftUI
import AVKit

struct MemoWriting3: View {
    
    var videoName: String = "MemoWriting3"
    
    @State private var isGestured: Bool = false
    
    var body: some View {
        let player = AVPlayer(url: Bundle.main.url(forResource: videoName, withExtension: "mov")!)
        
        VStack {
            ZStack {
                PlayerView(player: player)
                    .frame(width: 220, height: 477, alignment: .center)
                    .onAppear()
                    .disabled(true)
                
                TouchCircle(isGestured: $isGestured, player: player, xOffset: -95, yOffset: -173, opacity: 0.5)
            }
        }
    }
}

struct MemoWriting3_Previews: PreviewProvider {
    static var previews: some View {
        MemoWriting3()
    }
}
