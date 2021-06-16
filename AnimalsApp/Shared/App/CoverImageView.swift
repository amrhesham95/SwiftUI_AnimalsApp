//
//  CoverImageView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 16/06/2021.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                Image("cover-lion")
                    .resizable()
                    .scaledToFit()
                
            } // Loop
            
        } // Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - Preview

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
