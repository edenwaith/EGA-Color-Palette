//
//  ColorPaletteListView.swift
//  EGA Color Palette
//
//  Created by Chad Armstrong on 6/27/25.
//

import SwiftUI
import OrderedCollections // Need to add swift-collections package dependency via SPM

struct ColorPaletteListView: View {
    // Need to import OrderedCollections library for this
    var colors: OrderedDictionary<String, String>
    
    var body: some View {
        List {
            ForEach(self.colors.keys, id: \.self) { key in
                if let colorName = self.colors[key] {
                    ColorView(colorName: colorName, hexCode: key)
                }
            }
        }
    }
}

#Preview {
    ColorPaletteListView(colors: [:])
}
