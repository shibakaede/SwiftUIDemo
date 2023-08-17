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
                NavigationLink("文字视图") {
                    TextScreen()
                }
                NavigationLink("图像视图") {
                    ImageScreen()
                }
                NavigationLink("排版视图") {
                    LayoutScreen()
                }
                NavigationLink("形状视图") {
                    ShapeScreen()
                }
                NavigationLink("控制视图") {
                    ControlScreen()
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
