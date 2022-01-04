//
//  ContentView.swift
//  AgeChecker
//
//  Created by Gustav Persson on 2022-01-03.
//

import SwiftUI
import CodeScanner

struct ContentView: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String = "Skanna en QR-kod för att börja."
    
    var scannerSheet : some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: { result in
                if case let .success(code) = result {
                    scannedCode = code.string
                    isPresentingScanner = false
                }
            }
        )
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text(scannedCode)
            
            Button("Scan QR-code") {
                isPresentingScanner = true
            }
            
            .sheet(isPresented: $isPresentingScanner) {
                scannerSheet
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
