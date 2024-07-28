//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Zack Williams on 25/07/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
