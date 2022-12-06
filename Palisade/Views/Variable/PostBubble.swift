//
//  MessageBubble.swift
//  Palisade
//
//  Created by KKaay on 11/27/22.
//

import SwiftUI

struct PostBubble: View {
    var post: Post
    
    func getStrDate(date: String) -> String {
        let date = Date(timeIntervalSince1970: Double(date) ?? 0)
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "PDT")
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        return dateFormatter.string(from: date)
    }
    
    var body: some View {
        VStack (alignment: .trailing) {
            HStack {
                Text(post.message)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            .frame(maxWidth:300, alignment: .trailing)

            
            Text("\(getStrDate(date: post.id))")
                .font(.caption2)
                .foregroundColor(Color.gray)
                .padding(.trailing,20)
            
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.trailing)
        .padding(.horizontal, 10)
    }
}
