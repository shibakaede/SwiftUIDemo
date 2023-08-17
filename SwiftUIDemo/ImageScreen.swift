//
//  ImageScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct ImageScreen: View {
    @State private var imageIsPresented = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("图片导入+文字叠加")
                    .font(.title2)
                    .fontWeight(.bold)
                
                    Group {
                        Image("00029-1797116484")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 600)
                            .overlay (
                                HStack {
                                    Spacer()
                                    Text("美丽外表，善良心灵")
                                        .font(.body)
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.black.opacity(0.5)), alignment: .bottom)
                    }
                    .cornerRadius(15)
                        
                
                Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                    imageIsPresented = true
                })
                .font(.footnote)
                .sheet(isPresented: $imageIsPresented) {
                    VStack {
                        Image("image")
                            .resizable()
                            .scaledToFit()
                        Button("\(Image(systemName: "xmark.circle")) 关闭") {
                            imageIsPresented.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        ImageScreen()
    }
}
