//
//  VideoModel.swift
//  Africa
//
//  Created by joao camargo on 18/07/21.
//

import Foundation


// MARK: - AnimalModelElement
struct Video: Identifiable, Codable {
    let id, name, headline: String
    
    
    //MARK: - computed
    
    var thumbnail: String {
        "video-\(id)"
    }
    
    
}
