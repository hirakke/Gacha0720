//
//  ContentView.swift
//  Gacha0720
//
//  Created by Keiju Hiramoto on 2025/07/20.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var showSheet = false

    var body: some View {
        ZStack{
            Image("gacha")
                .resizable()
                .ignoresSafeArea()
            Button{
                showSheet = true
            }label: {
                Image("Presentbox")
                    .resizable()
                    .scaledToFit()
            }
        }
        .fullScreenCover(isPresented: $showSheet){
            ResultView()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
