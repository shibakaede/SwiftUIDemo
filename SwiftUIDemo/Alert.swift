//
//  Alert.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/15.
//

import SwiftUI

struct Alert: View {
    @State private var alertIsPresented = false
    
    @State var showAlert = false
    @State var normalAlert = false
    
    var body: some View {
        VStack {
            Button("显示允许用户选择的警告") {
                showAlert.toggle()
            }
            .cardStyle()
            .alert("删除", isPresented: $showAlert) {
                Button("是", role: .destructive) { }
                Button("否", role: .cancel) { showAlert = false }
            } message: {
                Text("永久删除，需要继续吗？")
            }
            
            Button("显示通知用户类型的警告") {
                normalAlert.toggle()
            }
            .cardStyle()
            .alert("用时较长", isPresented: $normalAlert) {
                Button("知道了") { normalAlert = false }
            } message: {
                Text("执行该操作预计用时5分钟以上，请保持应用在前台状态。")
            }

            //MARK: Alert Code Button
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                alertIsPresented = true
            })
            .font(.footnote)
            .sheet(isPresented: $alertIsPresented) {
                VStack {
                    Image("alert")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        alertIsPresented.toggle()
                    }
                }
            }
        }
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        Alert()
    }
}
