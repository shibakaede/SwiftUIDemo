//
//  Function.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/13.
//

import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 88)
            .padding()
            .background(Color("DarkMode"))
            .cornerRadius(15)
            .shadow(radius: 3)
            .padding(.horizontal)
            .padding(.bottom)
    }
}

extension View {
    func cardStyle() -> some View {
        self.modifier(CardModifier())
    }
}
