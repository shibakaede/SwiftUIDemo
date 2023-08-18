//
//  GroupBoxScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/17.
//

import SwiftUI

struct GroupBoxScreen: View {
    @State private var groupBoxIsPresented = false
    
    var body: some View {
        VStack {
            GroupBox {
                Image("00099-2267039378")
                    .resizable()
                    .scaledToFit()
                Text("本图片由Stable Diffusion生成")
                    .font(.footnote)
                    .foregroundColor(.gray)
            } label: {
                Label("BeautyLife Studio", systemImage: "photo").foregroundColor(.pink)
            }
            .padding()
            
            //MARK: GroupBox Code Button
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                groupBoxIsPresented = true
            })
            .font(.footnote)
            .sheet(isPresented: $groupBoxIsPresented) {
                VStack {
                    Image("groupbox")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        groupBoxIsPresented.toggle()
                    }
                }
            }
        }
    }
}

struct GroupBoxScreen_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxScreen()
    }
}
