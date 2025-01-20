//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Rasmus Lind on 20/01/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsViewer(scrums: $scrums)
        }
    }
}
