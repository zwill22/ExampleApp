//
//  EditScrumSheet.swift
//  Scrumdinger
//
//  Created by Zack Williams on 28/07/2024.
//

import SwiftUI

struct EditScrumSheet: View {
    @Binding var scrum: DailyScrum
    @Binding var isEditingScrumView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $scrum)
                .navigationTitle(scrum.title)
                .toolbar(content: {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isEditingScrumView = false
                        }
                    }
                    
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isEditingScrumView = false
                        }
                    }
                })
        }
    }
}

#Preview {
    EditScrumSheet(scrum: .constant(DailyScrum.sampleData[0]), isEditingScrumView: .constant(true))
}
