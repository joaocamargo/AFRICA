//
//  CreditsView.swift
//  Africa
//
//  Created by joao camargo on 04/08/21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
                Copyright @ João Camargo
                All righ reserved
                Batter Apps ♡ Less Code
            """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }.padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView().previewLayout(.sizeThatFits).padding()
    }
}
