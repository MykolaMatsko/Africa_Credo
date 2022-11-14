//
//  CenterModifier.swift
//  Africa_Credo
//
//  Created by Mykola Matsko on 14.11.2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
