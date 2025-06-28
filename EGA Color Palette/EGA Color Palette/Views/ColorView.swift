//
//  ColorView.swift
//  EGA Color Palette
//
//  Created by Chad Armstrong on 6/25/25.
//


// import OrderedCollections // Need to add swift-collections package via SPM
import SwiftUI

struct ColorView: View {
    
    var colorName: String
    var hexCode: String
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("\(colorName)")
                Text("#\(hexCode)")
            }
            
            Spacer()
            
            let color = Color(hex: hexCode) ?? Color.white
            let hexComponents = hexCode.components(withMaxLength: 2)
            
            let redComponent = UInt64(hexComponents[0], radix: 16) ?? 0
            let greenComponent = UInt64(hexComponents[1], radix: 16) ?? 0
            let blueComponent = UInt64(hexComponents[2], radix: 16) ?? 0
            
            Grid(alignment: .bottom, horizontalSpacing: 0, verticalSpacing: 0) {
                GridRow {
                    Rectangle()
                        .fill(color)
                        .frame(width: 150, height: 25)
                        .gridCellColumns(3)
                }
                GridRow {
                    Rectangle()
                        .fill(Color.init(.sRGB, red: Double(redComponent)/255.0, green: 0.0, blue: 0.0, opacity: 1.0))
                        .frame(width: 50, height: 25)
                    
                    Rectangle()
                        .fill(Color.init(.sRGB, red: 0, green: Double(greenComponent)/255.0, blue: 0.0, opacity: 1.0))
                        .frame(width: 50, height: 25)
                    
                    Rectangle()
                        .fill(Color.init(.sRGB, red: 0, green: 0, blue: Double(blueComponent)/255.0, opacity: 1.0))
                        .frame(width: 50, height: 25)
                    
                }
                GridRow {
                    
                    // let intGreenComponent = UInt64(hexComponents[1], radix: 16) ?? 0 //  String(hexComponents[1], radix: 10)
                    
                    Text("\(hexComponents[0])") // R
                        .colorTitleStyle(with: Color.red)
                    Text("\(hexComponents[1])") // G
                        .colorTitleStyle(with: Color.green)
                    Text("\(hexComponents[2])") // B
                        .colorTitleStyle(with: Color.blue)
                }
            }
        }
    }
}

#Preview {
    ColorView(colorName: "Red", hexCode: "AA0000")
}

