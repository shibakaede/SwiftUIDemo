//
//  Navigation.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/15.
//

import SwiftUI

struct Navigation: View {
    @State private var naviIsPresented = false
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                Scroll()
            } label: {
                Text("点击跳转")
                    .frame(maxWidth: 300)
                    .padding()
                    .background(Color("DarkMode"))
                    .cornerRadius(15)
                    .shadow(radius: 3)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Left") { }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Right") { }
                }
            }
            
            //MARK: Navigation Code Button
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                naviIsPresented = true
            })
            .font(.footnote)
            .sheet(isPresented: $naviIsPresented) {
                VStack {
                    Image("navi")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        naviIsPresented.toggle()
                    }
                }
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
