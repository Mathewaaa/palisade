//
//  DatabaseManager.swift
//  Palisade
//
//  Created by Mathew Xie on 11/30/22.
//

import Foundation
import FirebaseDatabase


class DatabaseManager: ObservableObject {
    private static let database = Database.database().reference()
    
    public static func createPost(category: Category, message: String) {
        let object: [String: String] = [
            "user": PalisadeApp.settingsManager.getUsername(),
            "message": message,
            "replies": ""
        ]

        database.child("palisade").child(category.rawValue).child(String(Int64((NSDate().timeIntervalSince1970 * 1000.0).rounded()))).setValue(object)
    }
}
