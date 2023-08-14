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
    
    @State private var textIsPresented = false
    @State private var labelIsPresented = false
    @State private var textfieldIsPresented = false
    @State private var securefieldIsPresented = false
    @State private var texteditorIsPresented = false
    @State private var multilineIsPresented = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("各种文字视图")
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack {
                    VStack(alignment: .leading, spacing: 15) {
                        //MARK: Text
                        Text("这是一段随意写出来的文字！")
                            .font(.headline)
                        
                        //MARK: Text Code Button
                        Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                            textIsPresented = true
                        })
                        .font(.footnote)
                        .sheet(isPresented: $textIsPresented) {
                            VStack {
                                Image("text")
                                    .resizable()
                                    .scaledToFit()
                                Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                    textIsPresented.toggle()
                                }
                            }
                        }
                    }
                    .cardStyle()
                    
                    VStack(alignment: .leading, spacing: 15) {
                        //MARK: Label
                        Label("节目", systemImage: "square.stack").font(.headline)
                        Label("最近更新", systemImage: "clock").font(.headline)
                        
                        //MARK: Label Code Button
                        Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                            labelIsPresented = true
                        })
                        .font(.footnote)
                        .sheet(isPresented: $labelIsPresented) {
                            VStack {
                                Image("label")
                                    .resizable()
                                    .scaledToFit()
                                Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                    labelIsPresented.toggle()
                                }
                            }
                        }
                    }
                    .cardStyle()
                }
                
                VStack {
                    //MARK: TextField
                    VStack(alignment: .trailing, spacing: 6){
                        HStack {
                            Text("用户名：")
                            TextField("\(Image(systemName: "magnifyingglass"))搜索", text: $input)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        //MARK: TextField Code Button
                        Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                            textfieldIsPresented = true
                        })
                        .font(.footnote)
                        .sheet(isPresented: $textfieldIsPresented) {
                            VStack {
                                Image("textfield1")
                                    .resizable()
                                    .scaledToFit()
                                Image("textfield2")
                                    .resizable()
                                    .scaledToFit()
                                Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                    textfieldIsPresented.toggle()
                                }
                            }
                        }
                    }
                    .padding(.vertical, 10)
                    
                    VStack(alignment: .trailing, spacing: 6){
                        //MARK: SecureField
                        HStack {
                            Text("    密码：")
                            SecureField("密码", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        //MARK: SecureField Code Button
                        Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                            securefieldIsPresented = true
                        })
                        .font(.footnote)
                        .sheet(isPresented: $securefieldIsPresented) {
                            VStack {
                                Image("secure1")
                                    .resizable()
                                    .scaledToFit()
                                Image("secure2")
                                    .resizable()
                                    .scaledToFit()
                                Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                    securefieldIsPresented.toggle()
                                }
                            }
                        }
                    }
                    .padding(.vertical, 10)
                }
                .frame(height: 150)
                .padding()
                .background(Color("DarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.horizontal)
                .padding(.bottom)

                
                VStack(alignment: .leading, spacing: 6) {
                    //MARK: TextEditor
                    TextEditor(text: $textInput)
                        .frame(height: 88)
                        .padding()
                        .background(Color("DarkMode"))
                        .cornerRadius(15)
                        .shadow(radius: 3)
                        .padding(.horizontal)

                    
                    //MARK: TextEditor Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        texteditorIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $texteditorIsPresented) {
                        VStack {
                            Image("editor1")
                                .resizable()
                                .scaledToFit()
                            Image("editor2")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                texteditorIsPresented.toggle()
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                
                VStack(alignment: .leading, spacing: 6){
                    //MARK: 多段文字排版
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
                    .background(Color("DarkMode"))
                    .cornerRadius(15)
                    .shadow(radius: 3)
                    .padding(.horizontal)
                    
                    //MARK: 多段文字排版 Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        multilineIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $multilineIsPresented) {
                        VStack {
                            Image("multi")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                multilineIsPresented.toggle()
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
