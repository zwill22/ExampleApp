//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Zack Williams on 25/07/2024.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "DS9", attendees: ["Kai", "Wen", "Kira", "Dax"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "TNG", attendees: ["Riker", "Troi", "Crusher", "LaForge", "Worf"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "VOY", attendees: ["Seven", "Kim", "Paris", "Torres", "Tuvok", "Chakotay", "Janeway", "The Doctor", "Kes", "Wildman"], lengthInMinutes:5, theme: .poppy)

    ]
}

