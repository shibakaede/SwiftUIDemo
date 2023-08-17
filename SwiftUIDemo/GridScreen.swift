//
//  GridScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/17.
//

import SwiftUI

private struct GridPics: Identifiable{
    let name: String
    let id = UUID()
}

private var pics = [
GridPics(name: "00020-854136227"),
GridPics(name: "00021-854136228"),
GridPics(name: "00022-854136229"),
GridPics(name: "00020-2664957101"),
GridPics(name: "00021-2664957102"),
GridPics(name: "00022-2664957103"),
GridPics(name: "00027-1797116482"),
GridPics(name: "00028-1797116483"),
GridPics(name: "00029-1797116484 1"),
]

struct GridScreen: View {
    @State private var gridIsPresented = false
    
    let rule = [GridItem(.adaptive(minimum: 120))]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: rule, spacing: 10) {
                ForEach(pics) { pic in
                    Image(pic.name)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(5)
                }
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
