//
//  VideoModel.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 18/06/2021.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        return "video-\(id)"
    }
}
