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
    private static let posts: [Category: Array<Dictionary<String, Dictionary<String, String>>>] = [:]
    
    
    public static func createPost(category: Category, message: String) {
        let object: [String: String] = [
            "user": PalisadeApp.settingsManager.getUsername(),
            "message": message,
            "replies": ""
        ]

        database.child("palisade").child(category.rawValue).child(String(Int64((NSDate().timeIntervalSince1970 * 1000.0).rounded()))).setValue(object)
    }
    
    public static func addReply(category: Category, messageId: String, message: String) {
        database.child("palisade").child(category.rawValue).child(messageId).child("replies").child(String(Int64((NSDate().timeIntervalSince1970 * 1000.0).rounded()))).setValue(message)
    }
    
    public static func getCategory(category: Category) {
        
    }
    
    func sendPost(text: String) {
        do {
            let newPost = Post(id: "\(UUID())", text: "message", timestamp: Date())
        }
    }
}
