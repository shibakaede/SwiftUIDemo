//
//  ControlScreen.swift
//  SwiftUIDemo
//
//  Created by Alan Chou on 2023/8/13.
//

import SwiftUI
import MapKit

struct ControlScreen: View {
    @State var location = MKCoordinateRegion(center: .init(latitude: 31.1316, longitude: 121.5823), latitudinalMeters: 1000, longitudinalMeters: 1000)
    @State var progressValue = 0.8
    @State private var mapIsPresented = false
    @State private var contextIsPresented = false
    @State private var progressIsPresented = false
    @State private var toggleIsPresented = false
    @State private var buttonIsPresented = false
    @State private var pickerIsPresented = false
    @State private var sliderIsPresented = false
    @State private var stepperIsPresented = false
    @State private var datepickerIsPresented = false

    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State var toggleValue = true
    
    @State var pickerValue = 0
    var pickerOptions = ["早餐", "午餐", "晚餐"]
    
    @State var sliderValue = 0.0
    
    @State var stepperValue = 0
    
    @State var selectedDate = Date()
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -100, to: Date())!
        let max = Calendar.current.date(byAdding: .year, value: 100, to: Date())!
        return min...max
    }
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    //MARK: Toggle
                    VStack(alignment: .leading, spacing: 6){
                        VStack(alignment: .leading) {
                            Text("Toggle")
                                .font(.headline)
                            
                            Toggle("AutoLogin", isOn: $toggleValue)
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                            
                            //MARK: Toggle Code Button
                            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                                toggleIsPresented = true
                            })
                            .font(.footnote)
                            .sheet(isPresented: $toggleIsPresented) {
                                VStack {
                                    Image("toggle1")
                                        .resizable()
                                        .scaledToFit()
                                    Image("toggle2")
                                        .resizable()
                                        .scaledToFit()
                                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                        toggleIsPresented.toggle()
                                    }
                                }
                            }
                        }
                        .cardStyle()
                    }
                    
                    //MARK: Button
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Button")
                            .font(.headline)

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
                        .background(Color.blue)
                        .cornerRadius(15)
                        
                        //MARK: Button Code Button
                        Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                            buttonIsPresented = true
                        })
                        .font(.footnote)
                        .sheet(isPresented: $buttonIsPresented) {
                            VStack {
                                Image("button")
                                    .resizable()
                                    .scaledToFit()
                                Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                    buttonIsPresented.toggle()
                                }
                            }
                        }
                    }
                    .cardStyle()
                }
                
                //MARK: Picker
                VStack(alignment: .leading, spacing: 6){
                    Text("Picker")
                        .font(.headline)
                    
                    Picker("Picker", selection: $pickerValue) {
                        ForEach(0..<3) { index in
                            Text(pickerOptions[index]).tag(index)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    //MARK: Picker Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        pickerIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $pickerIsPresented) {
                        VStack {
                            Image("picker1")
                                .resizable()
                                .scaledToFit()
                            Image("picker2")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                pickerIsPresented.toggle()
                            }
                        }
                    }
                }
                .cardStyle()
                
                //MARK: Slider
                VStack(alignment: .leading, spacing: 6) {
                    Text("Slider")
                        .font(.headline)

                    HStack {
                        Image(systemName: "moon")
                        Slider(value: $sliderValue, in: -5...5, step: 0.5)
                        Image(systemName: "moon.fill")
                    }
                    
                    //MARK: Slider Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        sliderIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $sliderIsPresented) {
                        VStack {
                            Image("slider1")
                                .resizable()
                                .scaledToFit()
                            Image("slider2")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                sliderIsPresented.toggle()
                            }
                        }
                    }
                }
                .cardStyle()
                
                //MARK: Stepper
                VStack(alignment: .leading, spacing: 6){
                    Text("Stepper")
                        .font(.headline)

                    Stepper(value: $stepperValue, in: -10...10) {
                        Text("当前数值：\(stepperValue)")
                    }
                    
                    //MARK: Stepper Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        stepperIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $stepperIsPresented) {
                        VStack {
                            Image("stepper1")
                                .resizable()
                                .scaledToFit()
                            Image("stepper")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                stepperIsPresented.toggle()
                            }
                        }
                    }
                }
                .cardStyle()
                
                //MARK: DatePicker
                VStack(alignment: .leading, spacing: 6) {
                    Text("DatePicker")
                        .font(.headline)

                    DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.hourAndMinute, .date], label: {
                        Text("截止日期")
                    })
                    
                    //MARK: DatePicker Code Button
                    Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                        datepickerIsPresented = true
                    })
                    .font(.footnote)
                    .sheet(isPresented: $datepickerIsPresented) {
                        VStack {
                            Image("datepicker1")
                                .resizable()
                                .scaledToFit()
                            Image("datepicker2")
                                .resizable()
                                .scaledToFit()
                            Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                datepickerIsPresented.toggle()
                            }
                        }
                    }
                }
                .cardStyle()
                
                VStack {
                    VStack(alignment: .leading, spacing: 6){
                        //MARK: Map
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Map")
                                .font(.headline)
                            
                            Map(coordinateRegion: $location)
                                .frame(height: 150)
                                .cornerRadius(15)
                        }
                        .frame(height: 200)
                        .padding()
                        .background(Color("DarkMode"))
                        .cornerRadius(15)
                        .shadow(radius: 3)
                        .padding(.horizontal)
                        
                        //MARK: Map Code Button
                        Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                            mapIsPresented = true
                        })
                        .font(.footnote)
                        .sheet(isPresented: $mapIsPresented) {
                            VStack {
                                Image("map1")
                                    .resizable()
                                    .scaledToFit()
                                Image("map2")
                                    .resizable()
                                    .scaledToFit()
                                Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                    mapIsPresented.toggle()
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 6){
                            //MARK: Context
                            VStack(alignment: .leading) {
                                Text("Context")
                                    .font(.headline)
                                VStack {
                                    Image(systemName: "ellipsis.circle.fill")
                                        .font(.system(size: 40, weight: .bold))
                                        .foregroundColor(.green)
                                        .frame(width: 60, height: 60)
                                    Text("长按菜单")
                                        .bold()
                                        .foregroundColor(.green)
                                }
                                .contextMenu {
                                    Button("演示A") { }
                                    Button("演示B") { }
                                    Button("演示C") { }
                                }
                            }
                            .frame(height: 120)
                            .padding()
                            .background(Color("DarkMode"))
                            .cornerRadius(15)
                            .shadow(radius: 3)
                            .padding(.horizontal)
                            
                            //MARK: Context Code Button
                            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                                contextIsPresented = true
                            })
                            .font(.footnote)
                            .sheet(isPresented: $contextIsPresented) {
                                VStack {
                                    Image("context")
                                        .resizable()
                                        .scaledToFit()
                                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                        contextIsPresented.toggle()
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        VStack(alignment: .leading, spacing: 6){
                            //MARK: ProgressView
                            VStack(alignment: .leading) {
                                Text("ProgressView")
                                    .font(.headline)
                                
                                Spacer()
                                HStack {
                                    ProgressView(value: progressValue)
                                        .padding()
                                    ProgressView(value: progressValue)
                                        .progressViewStyle(.circular)
                                        .padding()
                                }
                                Spacer()
                            }
                            .frame(height: 120)
                            .padding()
                            .background(Color("DarkMode"))
                            .cornerRadius(15)
                            .shadow(radius: 3)
                            .padding(.trailing)
                            
                            //MARK: ProgressView Code Button
                            Button("\(Image(systemName: "info.circle")) 显示代码", action: {
                                progressIsPresented = true
                            })
                            .font(.footnote)
                            .sheet(isPresented: $progressIsPresented) {
                                VStack {
                                    Image("progress1")
                                        .resizable()
                                        .scaledToFit()
                                    Image("progress2")
                                        .resizable()
                                        .scaledToFit()
                                    Button("\(Image(systemName: "xmark.circle")) 关闭") {
                                        progressIsPresented.toggle()
                                    }
                                }
                            }
                        }
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

struct fifthView_Previews: PreviewProvider {
    static var previews: some View {
        ControlScreen()
    }
}



