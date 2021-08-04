//
//  CenterModifier.swift
//  Africa
//
//  Created by joao camargo on 04/08/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
