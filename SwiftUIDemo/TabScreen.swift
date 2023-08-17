//
//  TabScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/13.
//

import SwiftUI
import MapKit

struct TabScreen: View {
    
    @State private var tabviewIsPresented = false
    
    var body: some View {
            VStack {
                Spacer()
                VStack(alignment: .center, spacing: 6){
                    Text("下方导航栏即为TabView视图")
                        .font(.headline)
                    
                    //MARK: TabView Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        tabviewIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $tabviewIsPresented) {
                        VStack {
                            Image("tabview")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                tabviewIsPresented.toggle()
                            }
                        }
                    }
                    
                    Image(systemName: "arrow.down")
                        .font(.system(size: 45, weight: .bold))
                }
                .frame(maxWidth: 400)
                .padding()
                .background(Color("DarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
