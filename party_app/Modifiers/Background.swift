//
//  Background.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 04/05/21.
//

import SwiftUI

struct Background: ViewModifier {
    
    func body(content: Content) -> some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color("BackgroundTopColor"), Color("3")]),
                startPoint: .top,
                endPoint: .bottom
            ).edgesIgnoringSafeArea(.all)

            content
        }
    }
}
