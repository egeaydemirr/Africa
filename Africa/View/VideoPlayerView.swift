//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Ege Aydemir on 19.10.2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
    }
}

//MARK: PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
