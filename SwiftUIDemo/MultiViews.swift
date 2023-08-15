//
//  MultiViews.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/15.
//

import SwiftUI

struct MultiViews: View {
    var body: some View {
        TabView {
            FirstView()
            SecondView()
            ThirdView()
            ForthView()
            fifthView()
            SixthView()
            HomeView()
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .automatic))
    }
}

struct MultiViews_Previews: PreviewProvider {
    static var previews: some View {
        MultiViews()
    }
}
