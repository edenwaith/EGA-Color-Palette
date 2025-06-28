//
//  MainContentView.swift
//  EGA Color Palette
//
//  Created by Chad Armstrong on 6/27/25.
//

import SwiftUI
import OrderedCollections

struct MainContentView: View {
    
    // Need to import OrderedCollections library for this
    let colors: OrderedDictionary<String, String> = [
        "000000": "Black",
        "0000AA": "Blue",
        "00AA00": "Green",
        "00AAAA": "Cyan",
        "AA0000": "Red",
        "AA00AA": "Magenta",
        "AA5500": "Brown",
        "AAAAAA": "Light Grey",
        "555555": "Dark Grey",
        "5555FF": "Light Blue",
        "55FF55": "Light Green",
        "55FFFF": "Light Cyan",
        "FF5555": "Light Red",
        "FF55FF": "Light Magenta",
        "FFFF55": "Yellow",
        "FFFFFF": "White"]
    
    var body: some View {
        TabView {
            ColorPaletteListView(colors: colors)
                .tabItem {
                    Label("List", systemImage: "list.dash")
                }
            
            ColorPaletteChartView(colors: colors)
                .tabItem {
                    Label("Chart", systemImage: "chart.pie")
                }
            
        }
    }
}

#Preview {
    MainContentView()
}
