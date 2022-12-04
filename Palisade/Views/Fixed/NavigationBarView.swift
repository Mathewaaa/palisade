//
//  NavigationBarView.swift
//  Palisade
//
//  Created by Mathew Xie on 11/22/22.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        TabView {
            PostContentView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Post")
                }
            FeedContentView()
                .tabItem {
                    Image(systemName: "person.3.fill").foregroundColor(.blue)
                    Text("Feed")
                }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
