//
//  NormalViews.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/17.
//

import SwiftUI

struct NormalViews: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    TextScreen()
                } label: {
                    Image(systemName: "text.bubble")
                    Text("文字视图")
                }
                NavigationLink {
                    ImageScreen()
                } label: {
                    Image(systemName: "photo")
                    Text("图像视图")
                }
                NavigationLink {
                    LayoutScreen()
                } label: {
                    Image(systemName: "doc.plaintext")
                    Text("排版视图")
                }
                NavigationLink {
                    ShapeScreen()
                } label: {
                    Image(systemName: "square.on.square")
                    Text("形状视图")
                }
                NavigationLink {
                    ControlScreen()
                } label: {
                    Image(systemName: "control")
                    Text("控制视图")
                }
            }
            .navigationTitle("常用视图")
        }
        
    }
}

struct NormalViews_Previews: PreviewProvider {
    static var previews: some View {
        NormalViews()
    }
}
