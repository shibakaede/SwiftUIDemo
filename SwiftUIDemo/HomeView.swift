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
            MultiViews()
                .tabItem {
                    Image(systemName: "book")
                    Text("TabView")
                }
            Text("ScrollView")
                .tabItem {
                    Image(systemName: "scroll")
                    Text("ScrollView")
                }
            Text("NavigationView")
                .tabItem {
                    Image(systemName: "globe")
                    Text("NavigationView")
                }
            Text("Modal")
                .tabItem {
                    Image(systemName: "arrow.up.to.line.compact")
                    Text("Modal")
                }
            Text("Alert")
                .tabItem {
                    Image(systemName: "exclamationmark.triangle")
                    Text("Alert")
                }
        }
    }
}

struct SeventhView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
