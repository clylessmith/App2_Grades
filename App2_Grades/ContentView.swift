//
//  ContentView.swift
//  App2_Grades
//
//  Created by Camden Lyles-Smith on 2/7/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gradesViewModel = GradesViewModel()
    
    var body: some View {
        HSplitView {
            StudentTableView(students: gradesViewModel.students, sortOrder: $gradesViewModel.sortOrder)
            StudentsListView(students: $gradesViewModel.students)
        }
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
