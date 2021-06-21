//
//  VideoPlayerHelper.swift
//  AnimalsApp (iOS)
//
//  Created by Amr Hesham on 21/06/2021.
//

import SwiftUI
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, withExtension: String) -> AVPlayer {
    if let url = Bundle.main.url(forResource: fileName, withExtension: withExtension) {
        videoPlayer = AVPlayer(url: url)
        videoPlayer?.play()
    }
    
    return videoPlayer ?? AVPlayer()
}
