//
//  PalisadeApp.swift
//  Palisade
//
//  Created by Mathew Xie on 11/9/22.
//

import SwiftUI
import Firebase

@main
struct PalisadeApp: App {
    public static let settingsManager = SettingsManager()
    init() {
        FirebaseApp.configure()
        //PalisadeApp.settingsManager.resetSettings() // reset storage for testing
        PalisadeApp.settingsManager.setFirstTime()
        if PalisadeApp.settingsManager.getUsername() == "Anonymous" {
            PalisadeApp.settingsManager.setUsername()
        }
        DatabaseManager.createPost(category: Category.sports, message: "hi")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
