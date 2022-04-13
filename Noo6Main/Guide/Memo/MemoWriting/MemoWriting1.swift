//
//  MemoWriting.swift
//  Test
//
//  Created by 이재웅 on 2022/04/11.
//

import SwiftUI
import AVKit

struct MemoWriting1: View {
    
    var videoName: String = "MemoWriting1"
    
    @State private var isGestured: Bool = false
    
    var body: some View {
        let player = AVPlayer(url: Bundle.main.url(forResource: videoName, withExtension: "mov")!)
        
        VStack {
            ZStack {
                PlayerView(player: player)
                    .frame(width: 220, height: 477, alignment: .center)
                    .onAppear()
                    .disabled(true)
                
                TouchCircle(isGestured: $isGestured, player: player, xOffset: -25, yOffset: -12, opacity: 0.5)
            }
        }
        
    }
}
