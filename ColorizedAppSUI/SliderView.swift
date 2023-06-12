//
//  SliderView.swift
//  ColorizedAppSUI
//
//  Created by kramonex on 12.06.2023.
//

import SwiftUI

struct SliderView: View {
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
        }
        .padding()
    }
}


struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
