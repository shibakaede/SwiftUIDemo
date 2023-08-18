//
//  NavigationSplitScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/18.
//

import SwiftUI

struct NavigationSplitScreen: View {
    @State private var ipadIsPresented = false
    var body: some View {
        GroupBox {
            Image("ipad")
                .resizable()
                .scaledToFit()
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                ipadIsPresented.toggle()
            })
            .font(.footnote)
            .sheet(isPresented: $ipadIsPresented) {
                VStack {
                    Image("ipadcode")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        ipadIsPresented.toggle()
                    }
                }
            }
        } label: {
            Text("NavigationSplitView")
        }
        .frame(height: 360)
        .padding()
    }
}

struct NavigationSplitScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitScreen()
    }
}
