//
//  ContentView.swift
//  App2_Grades
//
//  Created by Camden Lyles-Smith on 2/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        startingView()
    }
    
    @ViewBuilder
    func startingView() -> some View {
        VSplitView {
            Text("Drop View")
                .frame(maxWidth: .infinity, minHeight: 75, maxHeight: 100)
            HSplitView {
                Text("Table")
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                Text("List")
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
