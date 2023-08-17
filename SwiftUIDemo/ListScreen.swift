//
//  ListScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/17.
//

import SwiftUI

struct ListScreen: View {
    @State private var listIsPresented = false
    
    var body: some View {
        VStack {
            List {
                Section {
                    Text("List Item 1")
                    Text("List Item 2")
                    DisclosureGroup("DisclosureGroup") {
                        Text("List Item 3")
                        Text("List Item 4")
                    }
                } header: {
                    Text("Header")
                } footer: {
                    Text("Footer")
                }
            }
            
            //MARK: List Code Button
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                listIsPresented = true
            })
            .font(.footnote)
            .sheet(isPresented: $listIsPresented) {
                VStack {
                    Image("alert")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        listIsPresented.toggle()
                    }
                }
            }
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
