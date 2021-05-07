//
//  TicketCard.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 07/05/21.
//

import SwiftUI

struct TicketCard: View {
    let label: String
    let price: String
    var color: Color?
    
    init(label: String, price: String, color: Color?) {
        self.label = label
        self.price = price
        self.color = color
    }
    
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 8.0)
                .fill(self.color ?? Color("8"))
                .frame(height: 48.0)
            
            
            HStack (alignment: .center) {
                Text(self.label.uppercased())
                    .modifier(MyText(color: Color("White"), type: .Regular))
                    .padding(.leading, 16.0)
                
                Spacer()
                
                Text(self.price)
                    .modifier(MyText(color: Color("White"), type: .Regular))
                
                Image(systemName: "ticket.fill")
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 16.0)
            }
        }
    }
    
    mutating func setColor(_ color: Color?) {
        self.color = color
    }
}
