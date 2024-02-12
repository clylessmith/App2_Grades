//
//  CourseResults.swift
//  App2_Grades
//
//  Created by Camden Lyles-Smith on 2/9/24.
//

import Foundation
import SwiftUI

class CourseResults: ObservableObject {
    
    var students: [Student.ID : Student] = [:] {
        didSet {
            NotificationCenter.default.post(name: .studentsDidChange, object: self)
        }
    }
    
    var assignmentGroups: [AssignmentGroup.ID : AssignmentGroup] = [:]
}
