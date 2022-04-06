//
//  ContentView.swift
//  Noo6Main
//
//  Created by 최윤석 on 2022/04/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: ClearView()){
                Text("Hello")
                    .padding()
            }
        }.navigationBarHidden(true)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
