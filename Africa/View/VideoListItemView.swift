//
//  VideoListItem.swift
//  Africa
//
//  Created by joao camargo on 18/07/21.
//

import SwiftUI

struct VideoListItemView: View {
    
    //MARK: - properties
    
    let video: Video
    var body: some View {
        HStack {
            ZStack{
                Image(video.thumbnail).resizable().scaledToFit().frame(height: 80).cornerRadius(9)
                
                Image(systemName: "play.circle").resizable().scaledToFit().frame(height: 32).shadow(radius: 4)
                
            } // zstack
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                
            } //vstack
        } //hstack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[0]).previewLayout(.sizeThatFits).padding()
    }
}
