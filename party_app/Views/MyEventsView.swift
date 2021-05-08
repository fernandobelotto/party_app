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
                    EventPreviewWithTicket(purchasedTicket: ticket)
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.bottom)
                       
                }
            }
        }.modifier(Background())
    }
}

struct MyEventsView_Previews: PreviewProvider {
    static var previews: some View {
        MyEventsView(session: Session()).previewLayout(.sizeThatFits)
    }
}
