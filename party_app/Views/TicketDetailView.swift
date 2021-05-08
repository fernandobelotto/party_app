//
//  TicketDetailView.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 07/05/21.
//

import SwiftUI

struct TicketDetailView: View {
    let ticket: PurchasedTicketModel
    @StateObject var session = Session()
    
    var body: some View {
        ZStack (alignment: .center) {
            Card(color: Color("Black"))
            
            VStack (alignment: .center) {
                Text(self.ticket.event.name)
                    .modifier(MyText(color: Color("White"), type: .H2))
                    .padding(.top, 24.0)
                
                Spacer()
                
                VStack (alignment: .leading) {
                    FieldValue(
                        field: "name",
                        value: self.session.getCurrentUser().name
                    )
                    
                    FieldValue(
                        field: "local",
                        value: self.ticket.event.local
                    )
                    
                    FieldValue(
                        field: "date and time",
                        value: self.ticket.event.getDateAndTime()
                    )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 32.0)
                
                Spacer()
                
                Image("QRCode")
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    MyButton(text: "Save ticket", type: .Primary)
                }
                .padding(.bottom, 24.0)
            }
        }
        .padding(24.0)
        .modifier(Background())
    }
}
