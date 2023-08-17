//
//  HomeView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            NormalViews()
                .tabItem {
                    Image(systemName: "text.alignleft")
                    Text("常用视图")
                }
            TabScreen()
                .tabItem {
                    Image(systemName: "book")
                    Text("TabView")
                }
            Scroll()
                .tabItem {
                    Image(systemName: "scroll")
                    Text("ScrollView")
                }
            Navigation()
                .tabItem {
                    Image(systemName: "globe")
                    Text("NavigationView")
                }
            Modal()
                .tabItem {
                    Image(systemName: "arrow.up.to.line.compact")
                    Text("Modal")
                }
            AlertScreen()
                .tabItem {
                    Image(systemName: "exclamationmark.triangle")
                    Text("Alert")
                }
            ListScreen()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("List")
                }
            GridScreen()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Grid")
                }
            ForEachScreen()
                .tabItem {
                    Image(systemName: "arrow.triangle.capsulepath")
                    Text("ForEach 和 GroupBox")
                }
            Text("Form")
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Form")
                }
        }
    }
}

struct SeventhView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
