//
//  MessageBubble.swift
//  Palisade
//
//  Created by KKaay on 11/27/22.
//

import SwiftUI

struct PostBubble: View {
    var post: Post
    @State private var showTime = false
    var body: some View {
        VStack (alignment: .trailing) {
            HStack {
                Text(post.text)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            .frame(maxWidth:300, alignment: .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(post.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(Color.gray)
                    .padding(.trailing,20)
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.trailing)
        .padding(.horizontal, 10)
    }
}

struct PostBubble_Previews: PreviewProvider {
    static var previews: some View {
        PostBubble(post: Post(id: "12345", text: "No way", timestamp: Date()))
    }
}
