//
//  MenuScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/18.
//

import SwiftUI

struct MenuScreen: View {
    @State private var menuIsOn = false
    var body: some View {
        VStack {
            Menu("一级菜单") {
                Menu("二级菜单") {
                    Button("按钮4") { }
                    Button("按钮3") { }
                }
                Button("按钮2") { }
                Button("按钮1") { }
            }
            .frame(width: 200, height: 88)
            .padding()
            .background(Color("DarkMode"))
            .cornerRadius(15)
            .shadow(radius: 3)
            .padding(.horizontal)
            .padding(.bottom)
            
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                menuIsOn.toggle()
            })
            .font(.footnote)
            .sheet(isPresented: $menuIsOn) {
                VStack {
                    Image("menu")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        menuIsOn.toggle()
                    }
                }
            }
        }
    }
}

struct MenuScreen_Previews: PreviewProvider {
    static var previews: some View {
        MenuScreen()
    }
}
