//
//  VideoModel.swift
//  Africa_Credo
//
//  Created by Mykola Matsko on 13.11.2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
