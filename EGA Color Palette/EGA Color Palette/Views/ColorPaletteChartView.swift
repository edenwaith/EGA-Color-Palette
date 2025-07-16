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
        ZStack {
            
            let lightGrey:Color = Color(hex: "f2f2f7") ?? Color.gray
            
            Rectangle()
                .fill(lightGrey.gradient)
                .ignoresSafeArea(edges: .top)
                    
            ZStack {
                
                let colorsCount: Int = colors.count
                let hexColors = colors.keys
                
                ForEach(0..<colorsCount) { i in
                    
                    Circle()
                        .trim(from: CGFloat(i) / CGFloat(colorsCount),
                                to: CGFloat(i + 1) / CGFloat(colorsCount))
                        .stroke(Color(hex: hexColors[i % colorsCount]) ?? Color.gray, lineWidth: 40)
                        .rotationEffect(.degrees(-90))
                }
            }
            .frame(width: 200, height: 200)
            .shadow(radius: 2.0)
        }
    }
}

#Preview {
    ColorPaletteChartView(colors: [:])
}
