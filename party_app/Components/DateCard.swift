//
//  DateCard.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 06/05/21.
//

import SwiftUI

struct DateCard: View {
    let color: Color?
    
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 8.0)
                .fill(self.color ?? Color("3"))
            VStack (alignment: .center) {
                Text("FEV")
                    .modifier(MyText(color: Color("White"), type: .Regular))
                Text("05")
                    .modifier(MyText(color: Color("White"), type: .Regular))
            }
        }
        .frame(width: 56.0, height: 56.0)
    }
}
