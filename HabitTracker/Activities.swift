//
//  Activities.swift
//  HabitTracker
//
//  Created by Hossein Sharifi on 06/09/2023.
//

import Foundation

// This class manages a list of activities and saves/loads them to/from device storage.

// It observes changes to the activities list and persists any modifications.

class Activities: ObservableObject {
    
    
    @Published var activities: [Activity] {
        didSet {
            if let encoded = try? JSONEncoder().encode(activities) {
                UserDefaults.standard.set(encoded, forKey: "Activities")
            }
        }
    }
    
    init() {
        if let saved = UserDefaults.standard.data(forKey: "Activities") {
            if let decoded = try? JSONDecoder().decode([Activity].self, from: saved) {
                activities = decoded
                return
            }
        }
        activities = []
    }
}
