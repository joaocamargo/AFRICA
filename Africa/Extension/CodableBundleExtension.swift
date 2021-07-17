//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        // locate the json file
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //minuto 17:46
        
        //create a property for the data
        
        // create a decoder
        
        // create a property for decodeed data
        
        
        // return read to use data
    }
}
