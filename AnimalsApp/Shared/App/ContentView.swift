//
//  ContentView.swift
//  Shared
//
//  Created by Amr Hesham on 16/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [Animal]? = Bundle.main.decode("animals.json")
        
        NavigationView {
            List {
                CoverImageView()
                
                ForEach(animals!) { animal in
                    AnimalRowView(animal: animal)
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        } // Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
