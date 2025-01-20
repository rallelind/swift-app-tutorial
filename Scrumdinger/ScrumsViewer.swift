//
//  ScrumViewer.swift
//  Scrumdinger
//
//  Created by Rasmus Lind on 20/01/2025.
//

import SwiftUI

struct ScrumsViewer: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ScrumsViewer(scrums: .constant(DailyScrum.sampleData))
}
