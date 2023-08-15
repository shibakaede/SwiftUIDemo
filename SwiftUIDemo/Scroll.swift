//
//  Scroll.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/15.
//

import SwiftUI

struct Scroll: View {
    @State private var scrollVIsPresented = false
    @State private var scrollHIsPresented = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 15) {
                VStack {
                    Text("请尝试上下滑动视图")
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    //MARK: ScrollView Vertical
                    ScrollView(.vertical, showsIndicators: false) {
                        Label("iPhone", systemImage: "iphone.gen3")
                            .padding()
                        Label("iMac", systemImage: "desktopcomputer")
                            .padding()
                        Label("Airtag", systemImage: "airtag.radiowaves.forward")
                            .padding()
                        Label("MacBook", systemImage: "laptopcomputer")
                            .padding()
                        Label("Apple Watch", systemImage: "applewatch")
                            .padding()
                        Label("Studio Display", systemImage: "display")
                            .padding()
                    }
                    .font(.system(size: 35, weight: .bold))
                    .padding()
                    
                    //MARK: ScrollView Vertical Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        scrollVIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $scrollVIsPresented) {
                        VStack {
                            Image("scrollv")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                scrollVIsPresented.toggle()
                            }
                        }
                    }
                }
                .frame(height: 400)
                .padding()
                .background(Color("DarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.bottom)
                
                VStack(alignment: .center, spacing: 15){
                    Text("请尝试左右滑动视图")
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    //MARK: ScrollView Horizontal
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            VStack {
                                Image(systemName: "iphone.gen3")
                                Text("iPhone")
                            }.padding()
                            VStack {
                                Image(systemName: "desktopcomputer")
                                Text("iMac")
                            }.padding()
                            VStack {
                                Image(systemName: "airtag.radiowaves.forward")
                                Text("Airtag")
                            }.padding()
                            VStack {
                                Image(systemName: "laptopcomputer")
                                Text("MacBook")
                            }.padding()
                            VStack {
                                Image(systemName: "applewatch")
                                Text("Apple Watch")
                            }.padding()
                            VStack {
                                Image(systemName: "display")
                                Text("Studio Display")
                            }.padding()
                        }
                        .font(.system(size: 35, weight: .bold))
                    }
                    
                    //MARK: ScrollView Horizontal Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        scrollHIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $scrollHIsPresented) {
                        VStack {
                            Image("scrollh")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                scrollHIsPresented.toggle()
                            }
                        }
                    }
                }
                .frame(height: 180)
                .padding()
                .background(Color("DarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
