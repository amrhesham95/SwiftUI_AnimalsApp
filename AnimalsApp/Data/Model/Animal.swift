//
//  Animal.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 17/06/2021.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
