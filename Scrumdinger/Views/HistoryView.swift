//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Zack Williams on 08/08/2024.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, content: {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            })
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map({$0.name}))
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [
            DailyScrum.Attendee(name: "Jack"),
            DailyScrum.Attendee(name: "Sam"),
            DailyScrum.Attendee(name: "Daniel")
        ],
        transcript: "Jack, will you start today? I don't even know why we are here Daniel!"
        )
    }

    static var previews: some View {
        HistoryView(history: history)
    }
}
