//
//  ExternalWebLinkView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 17/06/2021.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!
                    )
                }
                .foregroundColor(.accentColor)
            } // HStack
        } // GroupBox
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal]? = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals!.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
