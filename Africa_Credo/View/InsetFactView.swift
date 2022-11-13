//
//  InsetFactView.swift
//  Africa_Credo
//
//  Created by Mykola Matsko on 12.11.2022.
//

import SwiftUI

struct InsetFactView: View {
    
    var animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//:TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:GROUPBOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}