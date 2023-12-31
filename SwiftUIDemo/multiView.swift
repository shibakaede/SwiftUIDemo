//
//  multiView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct multiView: View {
    var body: some View {
        TabView {
            FirstView()
            SecondView()
            ThirdView()
            ForthView()
            fifthView()
            SixthView()
            SeventhView()
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        multiView()
    }
}
