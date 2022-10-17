//
//  CoverImageSwift.swift
//  Africa
//
//  Created by Ege Aydemir on 17.10.2022.
//

import SwiftUI
struct CoverImage : Codable, Identifiable {
    let id : Int
    let name : String

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }
}

