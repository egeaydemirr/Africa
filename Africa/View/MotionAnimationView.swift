//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Ege Aydemir on 20.10.2022.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: PROPERTIES
    
    @State private var randomCircle = Int.random(in: 12...16)
    
    //MARK: BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: 256, height: 256, alignment: .center)
                        .position(
                            x:geometry.size.width/2,
                            y: geometry.size.height/2
                    )
                }//:LOOP
                Text("Width: \(Int(geometry.size.width)) Height: \(Int(geometry.size.height))")
            }//:ZSTACK
        }//:GEOMETRY
    }
}
//MARK: PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
