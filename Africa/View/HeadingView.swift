//
//  HeadingView.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import SwiftUI

struct HeadingView: View {
    
    //MARK: - propterties
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText).font(.title3)
                .fontWeight(.bold)
        }.padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
            .previewLayout(.sizeThatFits).padding()
    }
}
