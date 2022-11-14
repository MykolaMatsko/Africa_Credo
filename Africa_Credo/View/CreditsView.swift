//
//  CreditsView.swift
//  Africa_Credo
//
//  Created by Mykola Matsko on 14.11.2022.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
        Tutorial by this author
        Copyright Robert Petras
        All right reserved
        """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//VStack
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
