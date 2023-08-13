//
//  FirstView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct FirstView: View {
    @State var input = ""
    @State var password = ""
    @State var textInput = "请在此输入内容"
    let a = "Text(_:)"
    @State private var textIsPresented = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("这是一段随意写出来的文字！")
                            .font(.headline)
                        Button("显示代码", action: {
                            textIsPresented = true
                        })
                        .font(.footnote)
                        .alert(isPresented: $textIsPresented) {
                            Alert(title: Text("Text"),
                                  message: Text("Text(_:)"),
                                  dismissButton: .default(Text("OK")))
                        }
                    }
                    .cardStyle()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Label("节目", systemImage: "square.stack").font(.headline)
                        Label("最近更新", systemImage: "clock").font(.headline)
                        
                        Text("Label(String, systemImage: String)")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    .cardStyle()
                }
                
                Group {
                    HStack {
                        Text("用户名：")
                        TextField("\(Image(systemName: "magnifyingglass"))搜索", text: $input)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.horizontal, 20)
                    
                    Text("TextField(String, text: $input)")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text("    密码：")
                        SecureField("密码", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.horizontal, 20)
                    
                    Text("SecureField(String, text: $input)")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.bottom)
                }
                
                Group {
                    TextEditor(text: $textInput)
                        .padding()
                        .frame(width: 360, height: 200)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                    Text("TextEditor(text: $input)")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.bottom)
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("这是多段文字的排版示意")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Text("星期二")
                            .font(.footnote)
                        Text("聊聊苹果Mac新品发布会，ARM新时代的启幕")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("今天凌晨，苹果举行了今年秋季的第三场线上发布会。发布会上，此前宣布将于年底推出的自研Mac芯片Apple M1如期发布，搭载了M1的三款Mac新品也如期亮相，它们分别是MacBook Air、13英寸MacBook Pro和Mac mini。")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    Image(systemName: "icloud.and.arrow.down")
                        .foregroundColor(.blue)
                    Spacer()
                    
                    Text("33分钟")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .frame(height: 200)
                .padding()
                .background(.white)
                .cornerRadius(15)
                .shadow(radius: 3)
            }
            .padding()
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
