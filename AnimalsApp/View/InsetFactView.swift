//
//  InsetFactView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 17/06/2021.
//

import SwiftUI

struct InsetFactView: View {
    
    // MARK: - Properties
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } // TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148, idealHeight: 168, maxHeight: 180)
        } // GroupBox
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal]? = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals!.first!)
    }
}
