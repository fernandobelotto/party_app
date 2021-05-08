//
//  EventPreviewWithTicket.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 08/05/21.
//

import SwiftUI

struct EventPreviewWithTicket: View {
    var purchasedTicket: PurchasedTicketModel
    var body: some View {
        VStack {
            Image(purchasedTicket.event.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 152)
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.black)
                    .frame(maxWidth: .infinity, maxHeight: 149)
                VStack(alignment: .leading) {
                    Text(purchasedTicket.event.name)
                        .modifier(MyText(color: .white, type: .H2))
                        .frame(width: .infinity, alignment: .leading)
                    Text(purchasedTicket.event.local)
                        .modifier(MyText(color: .white, type: .Regular))
                    Text(purchasedTicket.event.getDateAndTime())
                        .modifier(MyText(color: .white, type: .Regular))
                    TicketCard(label: purchasedTicket.ticket.description, price: String(purchasedTicket.ticket.displayablePrice), color: Color("8"))
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
                .padding(.trailing, 18)
                .padding(.top, 10)
                .padding(.bottom, 18)
            }
        }.cornerRadius(25)
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
        ).previewLayout(.sizeThatFits)
    }
}
