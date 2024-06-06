//
//  ContentView.swift
//  WeSplit
//
//  Created by Saurab Ghimire on 04/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Section {
                Text("Hello world!")
            }
            
            Section {
                Text("Hello")
                Text("Hello")

            }
        }
        .navigationTitle("SwiftUI")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    ContentView()
}
