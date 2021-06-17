//
//  InsetGalleryView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 17/06/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 8) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } // HStack
            } // LOOP
        } // ScrollView
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal]? = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals!.first!)
    }
}
