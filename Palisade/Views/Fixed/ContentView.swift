//
//  ContentView.swift
//  Palisade
//
//  Created by Mathew Xie on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false

    var body: some View {
        ZStack {
            if isLoading {
                LoadingView()
            }
            else {
                NavigationBarView()
            }
        }
        .onAppear { startLoading() }
    }
    
    func startLoading() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) { // 3 seconds of loading
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
