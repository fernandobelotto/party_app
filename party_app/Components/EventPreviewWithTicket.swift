//
//  EventPreviewWithTicket.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 08/05/21.
//

import SwiftUI

struct EventPreviewWithTicket: View {
    let purchasedTicket: PurchasedTicketModel
        
    var body: some View {
        ZStack {
            Card(color: Color("Black"))
                .frame(height: 288.0)
            
            VStack {
                Image(self.purchasedTicket.event.imageName)
                    .resizable()
                    .frame(width: .infinity, height: 128)
                VStack(alignment: .leading) {
                    Text(self.purchasedTicket.event.name)
                        .modifier(MyText(color: Color("White"), type: .H2))
                        .frame(width: .infinity, alignment: .leading)
                    Text(self.purchasedTicket.event.local)
                        .modifier(MyText(color: Color("White"), type: .Small))
                    Text(self.purchasedTicket.event.getDateAndTime())
                        .modifier(MyText(color: Color("White"), type: .Small))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 24.0)
                NavigationLink(
                    destination: TicketDetailView(ticket: self.purchasedTicket),
                    label: {
                        TicketCard(label: purchasedTicket.ticket.description, price: String(purchasedTicket.ticket.displayablePrice), color: Color("8"))
                    }
                )
                .padding(20.0)
            }
        }
        .cornerRadius(25)
    }
}

struct EventPreviewWithTicket_Previews: PreviewProvider {
    static var previews: some View {
        EventPreviewWithTicket(
            purchasedTicket: PurchasedTicketModel.random(
                event: EventModel.random(
                    imageName: "ChopadaDaAgricola"
                )
            )
        )
        .previewLayout(.sizeThatFits)
    }
}
