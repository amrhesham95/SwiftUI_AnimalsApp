//
//  ContentView.swift
//  Shared
//
//  Created by Amr Hesham on 16/06/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")!
    @State private var isGridViewActive = false
    
    @State private var gridColumns = 1
    @State private var toolBarIcon = "square.grid.2x2"
    @State private var gridLayout = Array(repeating: GridItem(.flexible()), count: 1)
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalRowView(animal: animal)
                            } // NavigationLink
                        } // Loop
                    } // List
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { item in
                                NavigationLink(destination: AnimalDetailView(animal: item)) {
                                    AnimalGridItemView(animal: item)
                                }
                            }// Loop
                        }// Grid
                    }// Scroll
                    .padding()
                    .animation(.easeIn)
                    
                } // List
            } // Group
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        
                        // ListButton
                        Button(action: {
                            print("list view activated")
                            isGridViewActive = false
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(!isGridViewActive ? .accentColor : .primary)
                        } // ListButton
                        
                        // GridButton
                        Button(action: {
                            print("grid view activated")
                            isGridViewActive = true
                            gridSwitch()
                        }) {
                            Image(systemName: toolBarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        } // GridButton
                        
                        
                    } // HStack
                } // Buttons
                
                
            } // ToolBar
        } // Navigation
    }
}

// MARK: - Helpers
//
extension ContentView {
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        
        gridColumns = gridLayout.count
        
        switch gridColumns {
        case 1:
            toolBarIcon = "square.grid.2x2"
        case 2:
            toolBarIcon = "square.grid.3x2"
        case 3:
            toolBarIcon = "rectangle.grid.1x2"
            
        default:
            toolBarIcon = "square.grid.2x2"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
