//
//  Activity.swift
//  HabitTracker
//
//  Created by Hossein Sharifi on 06/09/2023.
//

import Foundation

struct Activity: Codable, Identifiable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var completionCount = 0
    
    static let example = Activity(title: "Example Activity", description: "This is an example activity")
}
