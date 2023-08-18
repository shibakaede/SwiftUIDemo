//
//  MoreScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/18.
//

import SwiftUI

struct MoreScreen: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    Modal()
                } label: {
                    Image(systemName: "arrow.up.to.line.compact")
                    Text("Modal")
                }
                NavigationLink {
                    AlertScreen()
                } label: {
                    Image(systemName: "exclamationmark.triangle")
                        .foregroundStyle(.red, .black)
                        .symbolRenderingMode(.palette)
                    Text("Alert")
                }
                NavigationLink {
                    ListScreen()
                } label: {
                    Image(systemName: "list.clipboard")
                    Text("List")
                }
                NavigationLink {
                    GridScreen()
                } label: {
                    Image(systemName: "square.grid.2x2")
                    Text("Grid")
                }
                NavigationLink {
                    ForEachScreen()
                } label: {
                    Image(systemName: "arrow.triangle.capsulepath")
                    Text("ForEach & GroupBox")
                }
                NavigationLink {
                    FormScreen()
                } label: {
                    Image(systemName: "list.bullet")
                    Text("Form")
                }
            }
            .navigationTitle("More")
        }
    }
}

struct MoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        MoreScreen()
    }
}
