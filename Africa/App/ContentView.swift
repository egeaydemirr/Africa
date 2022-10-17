//
//  ContentView.swift
//  Africa
//
//  Created by Ege Aydemir on 16.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }//: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }//:Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
