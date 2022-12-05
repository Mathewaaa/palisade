//
//  PostField.swift
//  Palisade
//
//  Created by KKaay on 11/27/22.
//

import SwiftUI

struct PostField: View {
    @State private var post = ""
    var body: some View {
        HStack {
            CustomPostField(placeholder: Text("Enter comments here"), text: $post)
            Button {
                DatabaseManager.createPost(category: Category(rawValue: topic) ?? .nature, message: post)
                post = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Color.gray)
                    .cornerRadius(50)
            }

        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.gray)
        .cornerRadius(50)
        .padding()
    }
}

struct PostField_Previews: PreviewProvider {
    static var previews: some View {
        PostField()
    }
}

struct CustomPostField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}

