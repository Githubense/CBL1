//
//  CBL1App.swift
//  CBL1
//
//  Created by Angel Adrian Pimienta Flores on 09/10/24.
//

import SwiftUI
import SwiftData


@main
struct CBL1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [
            User.self,
            Task.self,
            Emotion.self
        ])
    }
}
