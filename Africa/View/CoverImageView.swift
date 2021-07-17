//
//  CoverImageView.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - Properties
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: - body
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP            
        } //:Tab
        .tabViewStyle(PageTabViewStyle())
    }
}


//MARK: - preview

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView().previewLayout(.fixed(width: 400, height: 300))
    }
}
