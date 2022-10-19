//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Ege Aydemir on 19.10.2022.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileformat: String) -> AVPlayer {
    if Bundle.main.url(forResource: filename, withExtension: fileformat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileformat)!)
        videoPlayer?.play()
    }
    return videoPlayer! 
}
