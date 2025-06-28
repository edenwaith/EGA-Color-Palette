//
//  ColorTitleStyle.swift
//  EGA Color Palette
//
//  ViewModifiers make me think of CSS
//
//  Created by Chad Armstrong on 6/27/25.
//

import SwiftUI

struct ColorTitle: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(color)
            .fontWeight(.semibold)
    }
}

extension View {
    func colorTitleStyle(with color: Color) -> some View {
        modifier(ColorTitle(color: color))
    }
}
