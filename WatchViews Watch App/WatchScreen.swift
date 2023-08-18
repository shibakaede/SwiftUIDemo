//
//  WatchScreen.swift
//  WatchViews Watch App
//
//  Created by Alan Chou on 2023/8/18.
//

import SwiftUI

struct WatchScreen: View {
    let gradient = Gradient(colors: [.green, .red])
    @State private var current = 67.0
    @State private var min = 0.0
    @State private var max = 170.0
    
    var body: some View {
        VStack {
            Gauge(value: current, in: min...max) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(current))")
                    .foregroundColor(.green)
            } minimumValueLabel: {
                Text("\(Int(min))")
                    .foregroundColor(.green)
            } maximumValueLabel: {
                Text("\(Int(max))")
                    .foregroundColor(.red)
            }
            .tint(gradient)
            .padding()
            
            //MARK: 圆圈视图
            Gauge(value: current, in: min...max) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(current))")
                    .foregroundColor(.green)
            } minimumValueLabel: {
                Text("\(Int(min))")
                    .foregroundColor(.green)
            } maximumValueLabel: {
                Text("\(Int(max))")
                    .foregroundColor(.red)
            }
            .gaugeStyle(CircularGaugeStyle(tint: gradient))
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WatchScreen()
    }
}
