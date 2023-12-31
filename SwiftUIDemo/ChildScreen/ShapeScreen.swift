//
//  ShapeScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/12.
//

import SwiftUI

struct ShapeScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
                    .opacity(0.7)
                Text("Rectangle")
                    .font(.headline)
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.orange)
                    .opacity(0.7)
                Text("RoundedRectangle")
                    .font(.headline)
                    .padding(.vertical, 3)
                
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
                    .opacity(0.7)
                Text("Circle")
                    .font(.headline)
                
                Ellipse()
                    .frame(width: 100, height: 50)
                    .foregroundColor(.green)
                    .opacity(0.7)
                Text("Ellipse")
                    .font(.headline)
                
                Capsule()
                    .frame(width: 100, height: 50)
                    .foregroundColor(.blue)
                    .opacity(0.7)
                Text("Capsule")
                    .font(.headline)
            }
        }
    }
}

struct ForthView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeScreen()
    }
}
