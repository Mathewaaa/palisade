//
//  FeedContentView.swift
//  Palisade
//
//  Created by Mathew Xie on 11/23/22.
//

import SwiftUI

struct FeedContentView: View {
    @State var topic: Category = Category.none
    var body: some View {
        ZStack {
            if topic == Category.none {
                TopicsView(topic: $topic)
            } else {
                FeedPostView(topic: $topic)
            }
        }

    }
}

struct FeedContentView_Previews: PreviewProvider {
    static var previews: some View {
        FeedContentView()
    }
}
