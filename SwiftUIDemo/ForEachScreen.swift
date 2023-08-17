//
//  ForEachScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/17.
//

import SwiftUI

struct ForEachScreen: View {
    @State private var foreachIsPresented = false
    
    var target = ["15分钟","30分钟","45分钟","60分钟","90分钟"]
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    ForEach(0..<target.count) {
                        Text(self.target[$0])
                    }
                }
                .cardStyle()
                
                HStack {
                    ForEach(0..<target.count) {
                        Text(self.target[$0])
                    }
                }
                .cardStyle()
                
                //MARK: Grid Code Button
                Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                    foreachIsPresented = true
                })
                .font(.footnote)
                .sheet(isPresented: $foreachIsPresented) {
                    VStack {
                        Image("foreach")
                            .resizable()
                            .scaledToFit()
                        Button("\(Image(systemName: "xmark.circle")) 关闭") {
                            foreachIsPresented.toggle()
                        }
                    }
                }
            }
            
            GroupBoxScreen()
        }
    }
}

struct ForEachScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForEachScreen()
    }
}
