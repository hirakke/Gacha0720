//
//  ResultView.swift
//  Gacha0720
//
//  Created by Keiju Hiramoto on 2025/07/20.
//

import SwiftUI

struct ResultView: View {
    @Environment(\.dismiss) var dismiss
    @State var backGroundImageName: String = "bgRed"
    @State var characterImageName: String = "iphone"
    @State var star: String = "⭐️⭐️"
    @State private var imageOffset = 0.0
    
    let animationHeight: CGFloat = -50
    var body: some View {
        ZStack{
            Image(backGroundImageName)
                .resizable()
                .ignoresSafeArea()
            Image(characterImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 350)
                .offset(y: CGFloat(imageOffset)-50)
            
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)){
                        imageOffset = animationHeight
                    }
                }
            VStack{
                HStack{
                    Button("閉じる"){
                        dismiss()
                        print("閉じる")
                    }
                    .padding(40)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .font(.title)
                    Spacer()
                }
                Spacer()
                Text(star)
                    .font(.largeTitle)
                    .padding(.bottom,50)
            }
        }
        .onAppear{
            let number = Int.random(in: 0...9)
            switch number{
            case 9:
                backGroundImageName = "bgBlue"
                characterImageName = "IoTMesh"
                star = "⭐️⭐️⭐️⭐️⭐️"
                print("9")
            case 8:
                backGroundImageName = "bgGreen"
                characterImageName = "camera"
                star = "⭐️⭐️⭐️⭐️"
                print("8")
            case 0...7:
                backGroundImageName = "bgRed"
                characterImageName = "iphone"
                star = "⭐️⭐️"
                print("7")
            default:
                backGroundImageName = ""
                characterImageName = ""
                star = ""
                print("default")
            }
        }
    }
}

#Preview {
    ResultView()
}
