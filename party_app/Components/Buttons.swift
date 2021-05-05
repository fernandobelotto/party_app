//
//  Buttons.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 05/05/21.
//

import SwiftUI

enum ButtonType {
    case Primary
    case Secondary
}

struct MyButton: View {
    let text: String
    let fillColor: Color?
    let strokeColor: Color?
    let textColor: Color?
    
    init(text: String, type: ButtonType) {
        self.text = text
        
        switch type {
        case .Primary:
            self.fillColor = Color("10")
            self.strokeColor = nil
            self.textColor = Color("Black")
        case .Secondary:
            self.fillColor = nil
            self.strokeColor = Color("10")
            self.textColor = Color("White")
        }
    }
    
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 5.0, style: .continuous)
                .fill(self.fillColor ?? Color("Transparent"))
                .frame(height: 40)
                .padding(.horizontal, 43)
            RoundedRectangle(cornerRadius: 5.0, style: .continuous)
                .strokeBorder(self.strokeColor ?? Color("Transparent"), lineWidth: 2)
                .frame(height: 40)
                .padding(.horizontal, 43)
            Text(self.text)
                .modifier(MyText(color: self.textColor, type: .Regular))
        }
    }
    
}
