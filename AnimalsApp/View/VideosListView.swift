//
//  VideosListView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 16/06/2021.
//

import SwiftUI

struct VideosListView: View {
    
    // MARK: - Properties
    
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")!
    
    var body: some View {
        NavigationView {
            List(videos) { item in
                VideoRow(video: item)
                    .padding(.vertical, 8)
            } // List
            .navigationBarTitle("Videos", displayMode: .inline)
            .listStyle(InsetGroupedListStyle())
            .toolbar(content: {
                ToolbarItem {
                    Button(action: {
                        // shuffle
                        videos.shuffle()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            })
        } // NAvigationView
    }
}

struct VideosListView_Previews: PreviewProvider {
    static var previews: some View {
        VideosListView()
    }
}
