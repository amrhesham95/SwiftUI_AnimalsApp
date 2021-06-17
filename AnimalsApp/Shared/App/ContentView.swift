//
//  ContentView.swift
//  Shared
//
//  Created by Amr Hesham on 16/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
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
