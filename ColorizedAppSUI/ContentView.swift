//
//  ContentView.swift
//  ColorizedAppSUI
//
//  Created by kramonex on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValueRed = Double.random(in: 0...255)
    @State private var sliderValueGreen = Double.random(in: 0...255)
    @State private var sliderValueBlue = Double.random(in: 0...255)
    
    @State private var sliderColorRed = Color.red
    @State private var sliderColorGreen = Color.green
    @State private var sliderColorBlue = Color.blue
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 220)
                .foregroundColor(
                    Color(
                        red: sliderValueRed/255,
                        green: sliderValueGreen/255,
                        blue: sliderValueBlue/255
                    ))
            ColorSliderView(
                value: $sliderValueRed,
                textValue: $sliderValueRed,
                color: $sliderColorRed
            )
            ColorSliderView(
                value: $sliderValueGreen,
                textValue: $sliderValueGreen,
                color: $sliderColorGreen
            )
            ColorSliderView(
                value: $sliderValueBlue,
                textValue: $sliderValueBlue,
                color: $sliderColorBlue
            )
            Spacer()
        }
        .padding()
        .background(Color.cyan)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    @Binding var textValue: Double
    @Binding var color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(textValue))").frame(width: 35)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
        }
    }
}
