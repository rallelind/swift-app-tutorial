//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Rasmus Lind on 20/01/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumViewer(scrums: DailyScrum.sampleData)
        }
    }
}
