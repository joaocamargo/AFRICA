//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import Foundation

extension Bundle {
    func decode<T:Codable>(_ file: String) -> [T] {
        // locate the json file
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //minuto 17:46
        
        //create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        
        // create a decoder
        
        let decoder = JSONDecoder()
        
        // create a property for decodeed data
        guard let loaded = try? decoder.decode([T].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
                        
        // return read to use data
        return loaded
        
    }
}
