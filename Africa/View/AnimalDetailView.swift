//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Ege Aydemir on 18.10.2022.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: PROPERTIES
    let animal: Animal
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //TITLE
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                    
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.heavy)
                    .padding(.horizontal)
                //GALLERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                //FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                //DESCRIPTION
                //MAP
                //LINK
            }//: VSTACK
            .navigationBarTitle("Learn about \(animal.name)",
                                displayMode: .inline)
            
        }//:SCROLL
    }
}
//MARK: PREVIEWS
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }
    }
}
