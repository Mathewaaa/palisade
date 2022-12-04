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
            Spacer()
                .frame(height: 150.0)
            
            Text("What troubles you today?")
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
                .bold()
            
            Spacer()
                .frame(height: 80.0)
            
                            
            TextField(
                    "I...",
                    text: $input
            )
            .frame(width: 150.0, height: 25.0)
            .multilineTextAlignment(.center)
                .textInputAutocapitalization(.never)
                .border(.ultraThinMaterial)
                .cornerRadius(2.5)
            
            Spacer()
                .frame(width: 0.0, height: 80.0)
        
            Button("Next!") {
//                DatabaseManager.createPost(category: <#T##Category#>, message: input) // post message to database 
            }
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)


            
        
            Spacer()
                
                
        }
    }
}

struct PostContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostContentView()
    }
}
