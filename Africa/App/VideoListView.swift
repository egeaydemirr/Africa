//
//  VideoListView.swift
//  Africa
//
//  Created by Ege Aydemir on 17.10.2022.
//

import SwiftUI

struct VideoListView: View {
    //MARK: PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    //MARK: BODY
    var body: some View {
        NavigationView {
            List(videos) { item in
                NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name )) {
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        //action
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName:"arrow.2.squarepath")
                    }
                }
            }
        }//: Navigation
    }
}
//MARK: PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
