//
//  SixthView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/13.
//

import SwiftUI
import MapKit

struct SixthView: View {
    @State var location = MKCoordinateRegion(center: .init(latitude: 31.1316, longitude: 121.5823), latitudinalMeters: 1000, longitudinalMeters: 1000)
    
    @State var progressValue = 0.8
    
    @State private var mapIsPresented = false
    @State private var contextIsPresented = false
    @State private var progressIsPresented = false
    @State private var tabviewIsPresented = false
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("各种控制视图（续）")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    VStack(alignment: .leading, spacing: 6){
                        //MARK: Map
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Map")
                                .font(.headline)
                            
                            Map(coordinateRegion: $location)
                                .frame(height: 150)
                                .cornerRadius(15)
                        }
                        .frame(height: 200)
                        .padding()
                        .background(Color("DarkMode"))
                        .cornerRadius(15)
                        .shadow(radius: 3)
                        .padding(.horizontal)
                        
                        //MARK: Map Code Button
                        Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                            mapIsPresented = true
                        })
                        .font(.footnote)
                        .sheet(isPresented: $mapIsPresented) {
                            VStack {
                                Image("map1")
                                    .resizable()
                                    .scaledToFit()
                                Image("map2")
                                    .resizable()
                                    .scaledToFit()
                                Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                    mapIsPresented.toggle()
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 6){
                            //MARK: Context
                            VStack(alignment: .leading) {
                                Text("Context")
                                    .font(.headline)
                                VStack {
                                    Image(systemName: "ellipsis.circle.fill")
                                        .font(.system(size: 40, weight: .bold))
                                        .foregroundColor(.green)
                                        .frame(width: 60, height: 60)
                                    Text("长按菜单")
                                        .bold()
                                        .foregroundColor(.green)
                                }
                                .contextMenu {
                                    Button("演示A") { }
                                    Button("演示B") { }
                                    Button("演示C") { }
                                }
                            }
                            .frame(height: 120)
                            .padding()
                            .background(Color("DarkMode"))
                            .cornerRadius(15)
                            .shadow(radius: 3)
                            .padding(.horizontal)
                            
                            //MARK: Context Code Button
                            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                                contextIsPresented = true
                            })
                            .font(.footnote)
                            .sheet(isPresented: $contextIsPresented) {
                                VStack {
                                    Image("context")
                                        .resizable()
                                        .scaledToFit()
                                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                        contextIsPresented.toggle()
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        VStack(alignment: .leading, spacing: 6){
                            //MARK: ProgressView
                            VStack(alignment: .leading) {
                                Text("ProgressView")
                                    .font(.headline)
                                
                                Spacer()
                                HStack {
                                    ProgressView(value: progressValue)
                                        .padding()
                                    ProgressView(value: progressValue)
                                        .progressViewStyle(.circular)
                                        .padding()
                                }
                                Spacer()
                            }
                            .frame(height: 120)
                            .padding()
                            .background(Color("DarkMode"))
                            .cornerRadius(15)
                            .shadow(radius: 3)
                            .padding(.trailing)
                            
                            //MARK: ProgressView Code Button
                            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                                progressIsPresented = true
                            })
                            .font(.footnote)
                            .sheet(isPresented: $progressIsPresented) {
                                VStack {
                                    Image("progress1")
                                        .resizable()
                                        .scaledToFit()
                                    Image("progress2")
                                        .resizable()
                                        .scaledToFit()
                                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                        progressIsPresented.toggle()
                                    }
                                }
                            }
                        }
                    }
                    .padding(.bottom)
                }
                
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
}

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}
