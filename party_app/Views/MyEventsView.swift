//
//  MyEventsView.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 08/05/21.
//

import SwiftUI

struct MyEventsView: View {
    var session: Session

    var body: some View {
        VStack {
            ScrollView {
                Text("Your tickets")
                    .frame(maxWidth: .infinity, alignment: Alignment.leading)
                    .padding(.leading, 28)
                    .modifier(MyText(color: .white, type: .H1))
                
                ForEach(session.getCurrentUser().userTickets) { ticket in
                    NavigationLink(
                        destination: EventDetailsView(event: ticket.event),
                        label: {
                            EventPreviewWithTicket(
                                purchasedTicket: ticket
                            )
                        }
                    )
                    .padding(.horizontal, 24.0)   
                }
            }
        }
        .modifier(Background())
    }
}

struct MyEventsView_Previews: PreviewProvider {
    static var previews: some View {
        MyEventsView(session: Session()).previewLayout(.sizeThatFits)
    }
}
