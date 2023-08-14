//
//  ThirdView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("各种View视图")
                .font(.title2)
                .fontWeight(.bold)
            
            Divider().padding()
            
            Group {
                VStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                }
                .opacity(0.7)
                .foregroundColor(.yellow)
                .frame(width: 100, height: 200)
                .padding()
                .padding(.bottom)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                
                Text("VStack")
                    .font(.headline)
            }
            
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                }
                .opacity(0.7)
                .foregroundColor(.blue)
                .frame(width: 200, height: 100)
                .padding()
                .padding(.bottom)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                
                Text("HStack")
                    .font(.headline)
            }
            
            Group {
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .offset(CGPoint(x: -5, y: -3))
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .offset(CGPoint(x: 5, y: 16))
                }
                .opacity(0.7)
                .foregroundColor(.red)
                .frame(width: 200, height: 100)
                .padding()
                .padding(.bottom)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                
                Text("ZStack")
                    .font(.headline)
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
