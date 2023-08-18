//
//  WatchGaugeScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/18.
//

import SwiftUI

struct WatchGaugeScreen: View {
    @State private var watchIsPresented = false
    var body: some View {
        GroupBox {
            Image("watch")
                .resizable()
                .scaledToFit()
            Text("Gauge视图在iOS上也可以显示，但功能较WatchOS上有限")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                watchIsPresented.toggle()
            })
            .font(.footnote)
            .sheet(isPresented: $watchIsPresented) {
                VStack {
                    Image("watchcode")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        watchIsPresented.toggle()
                    }
                }
            }
        } label: {
            Text("在Watch上显示的Gauge视图")
        }
        .frame(height: 360)
        .padding()
    }
}

struct WatchGaugeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WatchGaugeScreen()
    }
}
