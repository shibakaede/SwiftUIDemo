//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstView()
            SecondView()
            ThirdView()
            ForthView()
            fifthView()
            SixthView()
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .automatic))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
