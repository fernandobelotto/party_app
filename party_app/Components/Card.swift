//
//  Card.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 05/05/21.
//

import SwiftUI

struct Card: View {
    let color: Color?
    
    init(color: Color?) {
        self.color = color
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16.0, style: .continuous)
            .fill(self.color ?? Color("Black"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
