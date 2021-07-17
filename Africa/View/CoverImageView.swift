//
//  CoverImageView.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - Properties
    
    //MARK: - body
    
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { item in
                Image("cover-lion")
                    .resizable()
                    .scaledToFit()
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
