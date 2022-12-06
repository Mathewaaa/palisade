//
//  FeedPostView.swift
//  Palisade
//
//  Created by Mathew Xie on 12/5/22.
//

import SwiftUI

struct FeedPostView: View {
    @Binding var topic: Category
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 25.0)
                Button {
                    topic = Category.none
                } label: {
                    Image(systemName: "arrowshape.backward.fill")
                }
                Spacer()
                Title(title: topic)
            }
            
            Spacer()
        }
    }
}
