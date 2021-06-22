//
//  GalleryView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 16/06/2021.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: - Properties
    @State private var selectedAnimal = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")!
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    // Dynamic Grid layout
    
    @State private var gridLayout = [GridItem(.flexible()), GridItem(.flexible())]
    @State private var gridColumns = 2.0
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                
                
                // Image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                // Slider
                Slider(value: $gridColumns, in: 2...4, step: 1)
                    .padding()
                    .onChange(of: gridColumns) { value in
                        gridSwitch()
                    }
                
                // Grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    }
                } //Grid
                
                .onAppear() {
                    gridSwitch()
                }
            } // VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 15)
        } // Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            MotionAnimationView()
        )
    }
}

// Mark: - Helpers
//
extension GalleryView {
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumns))
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
