//
//  Modal.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/15.
//

import SwiftUI

struct Modal: View {
    @State private var modalCodeIsPresented = false
    @State private var actionCodeIsPresented = false
    
    @State private var modalIsPresented = false
    
    @State private var actionIsPresented = false
    
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 15) {
                //MARK: Modal
                Button {
                    modalIsPresented.toggle()
                } label: {
                    Text("显示「长弹窗」")
                        .font(.headline)
                }
                .cardStyle()
                .sheet(isPresented: $modalIsPresented) {
                    ThirdView()
                }
                
                //MARK: Modal Code Button
                Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                    modalCodeIsPresented = true
                })
                .font(.footnote)
                .sheet(isPresented: $modalCodeIsPresented) {
                    VStack {
                        Image("modal1")
                            .resizable()
                            .scaledToFit()
                        Image("modal2")
                            .resizable()
                            .scaledToFit()
                        Button("\(Image(systemName: "xmark.circle")) 关闭") {
                            modalCodeIsPresented.toggle()
                        }
                    }
                }
            }
            .padding()
            
            VStack(alignment: .center, spacing: 15) {
                //MARK: ConfirmationDialog
                Button {
                    actionIsPresented.toggle()
                } label: {
                    Text("显示「确认对话框」")
                        .font(.headline)
                }
                .cardStyle()
                .confirmationDialog("要执行什么操作", isPresented: $actionIsPresented, titleVisibility: .visible) {
                    Button("添加至收藏夹", role: .none) { }
                    Button("删除项目", role: .destructive) { }
                    Button("Cancel", role: .cancel, action: { actionIsPresented = false })
                } message: {
                    Text("补充说明文字")
                }

                //MARK: ConfirmationDialog Code Button
                Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                    actionCodeIsPresented = true
                })
                .font(.footnote)
                .sheet(isPresented: $actionCodeIsPresented) {
                    VStack {
                        Image("action1")
                            .resizable()
                            .scaledToFit()
                        Image("action2")
                            .resizable()
                            .scaledToFit()
                        Button("\(Image(systemName: "xmark.circle")) 关闭") {
                            actionCodeIsPresented.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        Modal()
    }
}
