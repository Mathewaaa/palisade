//
//  SettingsManager.swift
//  Palisade
//
//  Created by Mathew Xie on 12/2/22.
//

import Foundation


class SettingsManager: ObservableObject {
    private let defaults = UserDefaults.standard
    private var firstLogin: Bool  // false = first time
    private var username: String
    
    init() {
        firstLogin = defaults.bool(forKey: "firstLogin")
        username = defaults.string(forKey: "username") ?? "Anonymous"
    }
    
    public func resetSettings() {
        defaults.dictionaryRepresentation().keys.forEach {
            key in defaults.removeObject(forKey: key)
        }
    }
    
    public func isFirstTime() -> Bool {
        return firstLogin
    }
    
    public func setFirstTime() {
        defaults.setValue(true, forKey: "firstLogin")
        firstLogin = true
    }
    
    public func getUsername() -> String {
        return username
    }
    
    public func setUsername() {
        username = UUID().uuidString
        defaults.setValue(username, forKey: "username")
    }
}
