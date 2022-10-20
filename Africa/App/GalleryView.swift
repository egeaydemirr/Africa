//
//  GalleryView.swift
//  Africa
//
//  Created by Ege Aydemir on 17.10.2022.
//

import SwiftUI

struct GalleryView: View {
    //MARK: PROPERTIES
    
    //SIMPLE GRID DEFINITION
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    //MARK: BODY
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        }//:SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}
//MARK: PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
