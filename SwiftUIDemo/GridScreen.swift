//
//  GridScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/17.
//

import SwiftUI

struct GridScreen: View {
    @State private var gridIsPresented = false
    
    let rule = [GridItem(.adaptive(minimum: 120))]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: rule, spacing: 10) {
                Group {
                    Image("00020-854136227")
                        .resizable()
                        .scaledToFit()
                    Image("00021-854136228")
                        .resizable()
                        .scaledToFit()
                    Image("00022-854136229")
                        .resizable()
                        .scaledToFit()
                    Image("00020-2664957101")
                        .resizable()
                        .scaledToFit()
                    Image("00021-2664957102")
                        .resizable()
                        .scaledToFit()
                    Image("00022-2664957103")
                        .resizable()
                        .scaledToFit()
                    Image("00027-1797116482")
                        .resizable()
                        .scaledToFit()
                    Image("00028-1797116483")
                        .resizable()
                        .scaledToFit()
                    Image("00029-1797116484 1")
                        .resizable()
                        .scaledToFit()
                }
                .cornerRadius(5)
            }
            .padding()
            
            //MARK: Grid Code Button
            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                gridIsPresented = true
            })
            .font(.footnote)
            .sheet(isPresented: $gridIsPresented) {
                VStack {
                    Image("grid")
                        .resizable()
                        .scaledToFit()
                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                        gridIsPresented.toggle()
                    }
                }
            }
        }
        
    }
}

struct GridScreen_Previews: PreviewProvider {
    static var previews: some View {
        GridScreen()
    }
}
