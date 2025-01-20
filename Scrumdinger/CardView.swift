//
//  CardView.swift
//  Scrumdinger
//
//  Created by Rasmus Lind on 20/01/2025.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum

    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel(
                        "\(scrum.lengthInMinutes) minute meeting"
                    )
                    .labelStyle(.trailingIcon)

            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)

    }
}

#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    let scrum = DailyScrum.sampleData[0]

    CardView(scrum: scrum)
        .background(scrum.theme.mainColor)
        .background(scrum.theme.mainColor)

}
