//
//  CodableBundleExtension.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 16/06/2021.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T? {
        // locate the file you gonna read from
        guard let url = url(forResource: file, withExtension: nil) else {
            return nil
        }
        
        // create property for data
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        guard let object = try? JSONDecoder().decode(T.self, from: data) else {
            return nil
        }
        return object
    }
}
