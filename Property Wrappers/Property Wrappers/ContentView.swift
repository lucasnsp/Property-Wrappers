//
//  ContentView.swift
//  Property Wrappers
//
//  Created by Lucas Neves dos santos pompeu on 02/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var exibirMensagem: Bool = false
    
    var body: some View {
        VStack {
            Text(exibirMensagem ? "Mundo" : "Olá")
                .font(.system(size: 26, weight: .bold))
            Button("Alterar mensagem") {
                exibirMensagem.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundStyle(Color.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
