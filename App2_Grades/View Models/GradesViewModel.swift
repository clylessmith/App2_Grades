//
//  GradesViewModel.swift
//  App2_Grades
//
//  Created by Camden Lyles-Smith on 2/9/24.
//

import Foundation
import SwiftUI

class GradesViewModel: ObservableObject {
    
    var courseResults = CourseResults(withTestData: true)
    
    @Published var students: [Student] = []
    
    @Published var sortOrder: [KeyPathComparator<Student>] = [
        .init(\.name, order: SortOrder.forward)] {
            didSet {
                updateState()
            }
        }
    
    init() {
        setNotifications()
        updateState()
    }
    
    func updateState() {
        self.students = Array(courseResults.students.values).sorted(using: sortOrder)
    }
    
    private func setNotifications() {
        NotificationCenter.default.addObserver(forName: .studentsDidChange,
                                               object: nil,
                                               queue: nil,
                                               using: studentStateDidChange)
    }
    
    private func studentStateDidChange(_ notification: Notification) {
        updateState()
    }
}

