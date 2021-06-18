//
//  VideoRow.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 18/06/2021.
//

import SwiftUI

struct VideoRow: View {
    let video: VideoModel
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } // ZStack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        } // HStack
    }
}

struct VideoRow_Previews: PreviewProvider {
    static let videos: [VideoModel]? = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoRow(video: videos!.first!)
            .previewLayout(.sizeThatFits)
    }
}
