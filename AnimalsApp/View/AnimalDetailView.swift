//
//  AnimalDetailView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 17/06/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    
    // MARK: - Properties
    
    let animal : Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(headingTitle: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingTitle: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)

                // Description
                Group {
                    HeadingView(headingImage: "info.circle", headingTitle: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)


                // MAP
                Group {
                    HeadingView(headingImage: "map", headingTitle: "National Parks")
                    
                    InsetMapView(animal: animal)
                }
                .padding(.horizontal)

                // LINK
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }// VStack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
            
        }// Scroll
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal]? = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals!.first!)
        }
    }
}
