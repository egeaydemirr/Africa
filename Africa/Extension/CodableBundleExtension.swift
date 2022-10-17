//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ege Aydemir on 17.10.2022.
//

import Foundation

extension Bundle {
    
    func decode(_ file: String) -> [CoverImage] {
        // 1. Locate the Json File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
    
    
    
    // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
    // 3. Crate a decoder
    let decoder = JSONDecoder()
    // 4. Create a property for the decoder data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed the decode \(file) from bundle.")
        }
    // 5. Return the ready-to-use data
        return loaded 
    }
}