//
//  VideoListView.swift
//  Africa
//
//  Created by Ege Aydemir on 17.10.2022.
//

import SwiftUI

struct VideoListView: View {
    //MARK: PROPERTIES
    var videos: [Video] = Bundle.main.decode("videos.json")
    //MARK: BODY
    var body: some View {
        NavigationView {
            List(videos) { item in
                VideoListItemView(video: item)
                    .padding(.vertical, 8)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
        }//: Navigation
    }
}
//MARK: PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
