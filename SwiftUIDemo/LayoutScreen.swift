//
//  LayoutScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct LayoutScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                    VStack {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                    }
                    .opacity(0.7)
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 200)
                    .padding()
                    .background(Color("DarkMode"))
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    
                    Text("VStack")
                        .font(.headline)
                        .padding(.bottom)
                
                    HStack {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                    }
                    .opacity(0.7)
                    .foregroundColor(.blue)
                    .frame(width: 200, height: 100)
                    .padding()
                    .background(Color("DarkMode"))
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    
                    Text("HStack")
                        .font(.headline)
                        .padding(.bottom)
                
                    ZStack {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .offset(CGPoint(x: -5, y: -3))
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .offset(CGPoint(x: 5, y: 16))
                    }
                    .opacity(0.7)
                    .foregroundColor(.red)
                    .frame(width: 200, height: 100)
                    .padding()
                    .padding(.bottom)
                    .background(Color("DarkMode"))
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    
                    Text("ZStack")
                        .font(.headline)
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutScreen()
    }
}
