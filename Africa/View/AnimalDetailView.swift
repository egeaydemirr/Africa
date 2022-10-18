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
                //TITLE
                //HEADLINE
                //GALLERY
                //FACTS
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
