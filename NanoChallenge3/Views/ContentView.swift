//
//  ContentView.swift
//  NanoChallenge3
//
//  Created by Rafa (Ruffles) on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var routerController = RouterController.shared
    
    var body: some View {
        NavigationStack(path: $routerController.viewStack) {
            VStack {
                // Essa tela geralmente
                Text("Stack vazia (é pra funcionar assim mesmo)")
                Button(action: {routerController.clear()}, label: {
                    Text("Resetar viewStack")
                })
            }
            .navigationDestination(for: String.self) { viewKey in
                ZStack {
                    switch viewKey {
                    // Adicionar outros cases para outras telas
                    default:
                        // Fazer tela de erro para quando a tela solicitada
                        // não existir
                        Text("Erro!")
                    }
                }
                .navigationBarBackButtonHidden(false)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
