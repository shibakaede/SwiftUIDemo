//
//  SecondView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        
        VStack {
            Text("图片导入+文字叠加")
                .font(.title2)
                .fontWeight(.bold)
            
            ZStack {
                Image("00029-1797116484")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 360)
                    .shadow(radius: 10)
                Text("美丽外表，善良心灵")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            Text("Image(String) / Image(systemName:String)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
