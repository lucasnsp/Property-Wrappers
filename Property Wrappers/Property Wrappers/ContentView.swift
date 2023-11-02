//
//  ContentView.swift
//  Property Wrappers
//
//  Created by Lucas Neves dos santos pompeu on 02/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var exibirMensagem: Bool = false
    @State private var label: String = ""
    
    var body: some View {
        VStack {
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
            VStack {
                Text(label)
                    .font(.system(size: 26, weight: .bold))
                TextField("Digite um texto", text: $label)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
