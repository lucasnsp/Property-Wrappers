//
//  ChangeValue.swift
//  Property Wrappers
//
//  Created by Lucas Neves dos santos pompeu on 03/11/23.
//

import SwiftUI

struct ChangeValue: View {
    
    @State private var value: CGFloat = 50
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            SetValue(value: $value)
            Slider(value: $value, in: 0...100, step: 10)
                .padding()
        }
    }
}

struct SetValue: View {
    @Binding var value: CGFloat
    
    var body: some View {
        VStack(spacing: 15) {
            Text("\(value)")
            Button("Clique aqui") {
                value = 10
            }
        }
        
    }
}

#Preview {
    ChangeValue()
}
