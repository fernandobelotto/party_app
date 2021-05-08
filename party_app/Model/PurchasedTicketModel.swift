//
//  PurchasedTicketModel.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

struct PurchasedTicketModel: Identifiable {
    var id = Double.random(in: 0...10000)
    let ticket: TicketModel
    let event: EventModel
}
