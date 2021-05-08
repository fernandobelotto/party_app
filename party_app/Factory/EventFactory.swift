//
//  EventModelFactory.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

extension EventModel {
    static func random(
        name: String = String.random(),
        date: Date = Date(),
        participants: [UserModel] = [UserModel.random()],
        tickets:[TicketModel] = [TicketModel.random()]
    ) -> EventModel {
        return EventModel(name: name, date: date, participants: participants, tickets: tickets)
    }
}
