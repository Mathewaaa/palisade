//
//  PostField.swift
//  Palisade
//
//  Created by KKaay on 11/27/22.
//

import SwiftUI

struct ReplyField: View {
    @State private var reply = ""
    var body: some View {
        HStack {
            CustomPostField(placeholder: Text("Type reply here"), text: $reply)
            Button {
                print("hi")
                reply = ""
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

struct ReplyField_Previews: PreviewProvider {
    static var previews: some View {
        ReplyField()
    }
}

struct CustomReplyField: View {
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

