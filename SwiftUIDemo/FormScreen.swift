//
//  FormScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/17.
//

import SwiftUI

struct FormScreen: View {
    @State private var toggle1 = false
    @State private var toggle2 = false
    @State private var timer = ["15分钟","30分钟","45分钟","60分钟","90分钟"]
    @State private var time = 0
    @State private var selecter = ["AM", "PM"]
    @State private var select = 0
    @State private var formIsPresented = false
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Toggle("显示目标", isOn: $toggle1)
                    Toggle("推送提醒", isOn: $toggle2)
                    Picker("间隔时间", selection: $time) {
                        ForEach(0..<timer.count) {
                            Text(self.timer[$0])
                        }
                    }.pickerStyle(.navigationLink)
                    Picker(selection: $select) {
                        ForEach(0..<selecter.count) {
                            Text(self.selecter[$0])
                        }
                    } label: {
                        Text("间隔时间")
                    }
                    .pickerStyle(.menu)
                } header: {
                    Text("基本设置")
                }
                Section {
                    NavigationLink("卡片显示") {
                        GroupBoxScreen()
                    }
                    Button("显示代码", action: {
                        formIsPresented.toggle()
                    })
                    .sheet(isPresented: $formIsPresented) {
                        VStack {
                            Image("form")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                formIsPresented.toggle()
                            }
                        }
                    }

                }

            }
            .navigationTitle("Form演示")
        }
    }
}

struct FormScreen_Previews: PreviewProvider {
    static var previews: some View {
        FormScreen()
    }
}
