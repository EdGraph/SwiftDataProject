//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by GraphEdge on 2026/03/28.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
