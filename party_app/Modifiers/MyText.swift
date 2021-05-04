//
//  Text.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 04/05/21.
//

import SwiftUI

enum TextType {
    case H1
    case H2
    case Regular
    case Small
}

struct MontserratFont {
    static let regular = "Montserrat-Regular"
    static let bold = "Montserrat-Bold"
    static let medium = "Montserrat-Medium"
    static let italic = "Montserrat-Italic"
}

struct MyText: ViewModifier {
    let color: Color?
    let size: CGFloat
    let font: String

    init(color: Color?, type: TextType) {
        self.color = color

        switch type {
        case .H1:
            self.font = MontserratFont.bold
            self.size = 36.0
        case .H2:
            self.font = MontserratFont.bold
            self.size = 24.0
        case .Regular:
            self.font = MontserratFont.regular
            self.size = 18
        case .Small:
            self.font = MontserratFont.regular
            self.size = 12.0
        }
    }

    func body(content: Content) -> some View {
        content
            .font(.custom(self.font, size: self.size))
            .foregroundColor(self.color)
    }
}
