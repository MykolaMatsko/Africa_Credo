//
//  InsetGalleryVIew.swift
//  Africa_Credo
//
//  Created by Mykola Matsko on 11.11.2022.
//

import SwiftUI

struct InsetGalleryVIew: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }//:LOOP
            }//:HSTACK
        }//:SCROLLVIEW
    }
}

struct InsetGalleryVIew_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryVIew(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
