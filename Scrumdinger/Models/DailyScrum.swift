//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Zack Williams on 25/07/2024.
//

import Foundation

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
        
    }
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map {
            Attendee(name: $0)
        }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "DS9", attendees: ["Kai", "Wen", "Kira", "Dax"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "TNG", attendees: ["Riker", "Troi", "Crusher", "LaForge", "Worf"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "VOY", attendees: ["Seven", "Kim", "Paris", "Torres", "Tuvok", "Chakotay", "Janeway", "The Doctor", "Kes", "Wildman"], lengthInMinutes:5, theme: .poppy)

    ]
}

