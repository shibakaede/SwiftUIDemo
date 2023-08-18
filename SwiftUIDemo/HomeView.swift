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
           MoreScreen()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }
        }
    }
}

struct SeventhView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
