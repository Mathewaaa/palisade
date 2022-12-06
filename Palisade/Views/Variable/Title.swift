//
//  Title.swift
//  Palisade
//
//  Created by KKaay on 11/27/22.
//

import SwiftUI

struct Title: View {
    var title: Category
    var body: some View {
        VStack(alignment: .leading) {
            Text(title.rawValue.capitalized)
                .font(.title)
                .bold()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.gray)
        .cornerRadius(10)
        .padding()
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: Category.art)
    }
}
