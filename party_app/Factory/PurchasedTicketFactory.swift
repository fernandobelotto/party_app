//
//  PurchasedTicketFactory.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 08/05/21.
//

import Foundation

extension PurchasedTicketModel {
    static func random(
        ticket: TicketModel = TicketModel.random(),
        event: EventModel = EventModel.random()
    ) -> PurchasedTicketModel {
        return PurchasedTicketModel(ticket: ticket, event: event)
    }
}
