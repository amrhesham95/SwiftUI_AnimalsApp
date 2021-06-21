//
//  MapAnnotationView.swift
//  AnimalsApp (iOS)
//
//  Created by Amr Hesham on 21/06/2021.
//

import SwiftUI

struct MapAnnotationView: View {
    
    // MARK: - Properties
    
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)

            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")!

    static var previews: some View {
        MapAnnotationView(location: locations.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
