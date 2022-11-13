//
//  ExternalWebLinkView.swift
//  Africa_Credo
//
//  Created by Mykola Matsko on 13.11.2022.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    var animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "http://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//HStack
        }//GroupBox
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
