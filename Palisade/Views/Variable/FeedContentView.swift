//
//  FeedContentView.swift
//  Palisade
//
//  Created by Mathew Xie on 11/23/22.
//

import SwiftUI

struct FeedContentView: View {
    var body: some View {
        VStack {
            VStack {
                Title()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding()
                ScrollView {
//                    ForEach(postManager.posts, id: \.id) {
//                        post in PostBubble (post: post)
//                    }
                }
                .padding(.top,10)
                .background(.white)
            }
            PostField()
        }

    }
}

struct FeedContentView_Previews: PreviewProvider {
    static var previews: some View {
        FeedContentView()
    }
}
