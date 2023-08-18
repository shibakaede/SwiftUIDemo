//
//  ColorPickerScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/18.
//

import SwiftUI

struct ColorPickerScreen: View {
    @State private var colorIsPresented = false
    
    @State var themeColor = Color(.sRGB, red: 0, green: 0, blue: 0)
    
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .frame(width: 50, height: 50)
                    .foregroundColor(themeColor)
                ColorPicker("给方块选择颜色", selection: $themeColor)
            }
                .padding()
                .cardStyle()
            
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                colorIsPresented.toggle()
            })
            .font(.footnote)
            .sheet(isPresented: $colorIsPresented) {
                VStack {
                    Image("color")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        colorIsPresented.toggle()
                    }
                }
            }
        }
    }
}

struct ColorPickerScreen_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerScreen()
    }
}
