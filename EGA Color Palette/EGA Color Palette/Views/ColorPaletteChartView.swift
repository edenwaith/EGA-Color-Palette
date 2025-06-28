//
//  ColorPaletteChartView.swift
//  EGA Color Palette
//
//  Created by Chad Armstrong on 6/27/25.
//

import SwiftUI
import OrderedCollections // Need to add this Framework in the project

struct ColorPaletteChartView: View {
    
    var colors: OrderedDictionary<String, String>
    
    // Drawing an arc: https://codingwithrashid.com/how-to-create-arc-shapes-in-swiftui/
    var body: some View {
        Text("Hello, Chart View!")
    }
}

#Preview {
    ColorPaletteChartView(colors: [:])
}
