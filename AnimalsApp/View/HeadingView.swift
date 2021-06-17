//
//  HeadingView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 17/06/2021.
//

import SwiftUI

struct HeadingView: View {
    
    var headingImage: String = "photo.on.rectangle.angled"
    var headingTitle: String
    
    var body: some View {
        
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingTitle)
                .font(.title3)
                .fontWeight(.bold)
        } // HStack
        .padding()
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Great animals")
            .previewLayout(.sizeThatFits)
    }
}
