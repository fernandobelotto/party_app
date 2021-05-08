//
//  FieldValue.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 07/05/21.
//

import SwiftUI

struct FieldValue: View {
    let field: String
    let value: String
    
    init(field: String, value: String) {
        self.field = field
        self.value = value
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(self.field)
                .modifier(MyText(color: Color("9"), type: .Small))
            Text(self.value)
                .modifier(MyText(color: Color("White"), type: .Regular))
        }
        .padding(4.0)
    }
}
