//
//  ContentView.swift
//  AgeChecker
//
//  Created by Gustav Persson on 2022-01-03.
//

import SwiftUI

struct ContentView: View {
    @State var isPresentingScanner = false
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
