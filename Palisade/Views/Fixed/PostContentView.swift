//
//  PostContentView.swift
//  Palisade
//
//  Created by Mathew Xie on 11/22/22.
//

import SwiftUI

struct PostContentView: View {
    @State var input: String = ""

    var body: some View {
        VStack {            
            Text("What troubles you today?")
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
                .bold()
            
            Spacer()
                .frame(height: 150.0)
            
                            
            TextField(
                    "I...",
                    text: $input
            )
            .frame(width: 150.0, height: 50.0)
            
            
            Spacer()
                .frame(height: 150.0)
            
            Menu("Submit") {
                Button("Sports", action: { DatabaseManager.createPost(category: Category.sports, message: input) })
                Button("Nature", action: { DatabaseManager.createPost(category: Category.nature, message: input) })
                Button("Art", action: { DatabaseManager.createPost(category: Category.art, message: input) })
                Button("Dating", action: { DatabaseManager.createPost(category: Category.dating, message: input) })
                Button("Gaming", action: { DatabaseManager.createPost(category: Category.gaming, message: input) })
                Button("Food", action: { DatabaseManager.createPost(category: Category.food, message: input) })
                Button("Feelings", action: { DatabaseManager.createPost(category: Category.feelings, message: input) })
                Button("Work", action: { DatabaseManager.createPost(category: Category.work, message: input) })
            }
        }
    }
}

struct PostContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostContentView()
    }
}
