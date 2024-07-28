//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Zack Williams on 28/07/2024.
//

import SwiftUI

struct NewScrumSheet: View {
    @State private var newScrum = DailyScrum.emptyScrum
    @Binding var scrums: [DailyScrum]
    @Binding var isPresentingNewScrumView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .toolbar(content: {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingNewScrumView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            scrums.append(newScrum)
                            isPresentingNewScrumView = false
                        }
                    }
                })
        }
    }
}

#Preview {
    NewScrumSheet(
        scrums: .constant(DailyScrum.sampleData),
        isPresentingNewScrumView: .constant(true)
    )
}
