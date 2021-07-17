//
//  AnimalModal.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import Foundation
import SwiftUI


struct Animal: Codable, Identifiable {
    let id, name, headline, description: String
    let link: String
    let image: String
    let gallery, fact: [String]
}
