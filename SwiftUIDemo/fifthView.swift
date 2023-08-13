//
//  fifthView.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/13.
//

import SwiftUI

struct fifthView: View {
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var toggleIsPresented = false
    @State private var buttonIsPresented = false
    @State private var pickerIsPresented = false
    @State private var sliderIsPresented = false
    @State private var stepperIsPresented = false
    let aLongText = """
Picker(titleString, selection: $pickerValue)
{ ForEach(0..<pickerOptions.count)
{ index in Text(pickerOptions[index]).tag(index)}
}.pickerStyle(SegmentedPickerStyle())
"""
    @State var toggleValue = true
    @State var pickerValue = 0
    var pickerOptions = ["早餐", "午餐", "晚餐"]
    @State var sliderValue = 0.0
    @State var stepperValue = 0
    @State var selectedDate = Date()
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -100, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 100, to: Date())!
        return min...max
    }
    
    var body: some View {
        ScrollView {
            HStack {
                //MARK: Toggle
                VStack(alignment: .leading, spacing: 6){
                    VStack(alignment: .leading) {
                        Text("Toggle")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Toggle("AutoLogin", isOn: $toggleValue)
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                            .foregroundColor(.black)
                        
                        Button("显示代码", action: {
                            toggleIsPresented = true
                        })
                        .font(.footnote)
                        .alert(isPresented: $toggleIsPresented) {
                            Alert(title: Text("Toggle"),
                                  message: Text("Toggle(titleString, isOn: $toggleValue)"),
                                  dismissButton: .default(Text("OK")))
                        }
                    }
                    .cardStyle()
                }
                
                //MARK: Button
                VStack(alignment: .leading, spacing: 6) {
                    Text("Button")
                        .font(.headline)
                        .foregroundColor(.black)
                    Button {
                        //仅示例，无功能
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "person.crop.circle.fill.badge.minus")
                            .font(.system(size: 16, weight: .bold))
                        Text("退出")
                            .bold()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
                    
                    Button("显示代码", action: {
                        buttonIsPresented = true
                    })
                    .font(.footnote)
                    .alert(isPresented: $buttonIsPresented) {
                        Alert(title: Text("Button"),
                              message: Text("Button(action: { code }, label: { code })"),
                              dismissButton: .default(Text("OK")))
                    }
                }
                .cardStyle()
            }
            
            //MARK: Picker
            VStack(alignment: .leading, spacing: 6){
                Text("Picker")
                    .font(.headline)
                    .foregroundColor(.black)
                
                Picker("Picker", selection: $pickerValue) {
                    ForEach(0..<pickerOptions.count) { index in
                        Text(pickerOptions[index]).tag(index)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                Button("显示代码", action: {
                    pickerIsPresented = true
                })
                .font(.footnote)
                .alert(isPresented: $pickerIsPresented) {
                    Alert(title: Text("Picker"),
                          message: Text(aLongText),
                          dismissButton: .default(Text("OK")))
                }
            }
            .cardStyle()
            
            //MARK: Slider
            VStack(alignment: .leading, spacing: 6) {
                Text("Slider")
                    .font(.headline)
                    .foregroundColor(.black)
                HStack {
                    Image(systemName: "moon")
                    Slider(value: $sliderValue, in: -5...5, step: 0.5)
                    Image(systemName: "moon.fill")
                }
                
                Button("显示代码", action: {
                    sliderIsPresented = true
                })
                .font(.footnote)
                .alert(isPresented: $sliderIsPresented) {
                    Alert(title: Text("Slider"),
                          message: Text("Slider(value: $sliderValue, in: _ ,step: _ )"),
                          dismissButton: .default(Text("OK")))
                }
            }
            .cardStyle()
            
            //MARK: Stepper
            VStack(alignment: .leading, spacing: 6){
                Text("Stepper")
                    .font(.headline)
                    .foregroundColor(.black)
                Stepper(value: $stepperValue, in: -10...10) {
                    Text("当前数值：\(stepperValue)")
                }
                Button("显示代码", action: {
                    stepperIsPresented = true
                })
                .font(.footnote)
                .alert(isPresented: $stepperIsPresented) {
                    Alert(title: Text("Stepper"),
                          message: Text("Stepper(titleString, value: $stepperValue, in: range)"),
                          dismissButton: .default(Text("OK")))
                }
            }
            .cardStyle()
            
            //MARK: DatePicker
            VStack(alignment: .leading, spacing: 6) {
                Text("DatePicker")
                    .font(.headline)
                    .foregroundColor(.black)
                DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.hourAndMinute, .date], label: {
                    Text("截止日期")
                })
            }
            .cardStyle()
        }
    }
}

struct fifthView_Previews: PreviewProvider {
    static var previews: some View {
        fifthView()
    }
}



