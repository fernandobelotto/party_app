//
//  BlackBackground.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import SwiftUI

struct BlackBackgroundView: ViewModifier {
    
    func body(content: Content) -> some View {
        ZStack {
            Color(.black)
                .frame(height: 550)
                .padding(.leading, 24)
                .padding(.trailing, 24)

            content
        }
    }
}
