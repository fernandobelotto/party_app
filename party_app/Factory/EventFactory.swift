//
//  EventModelFactory.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

extension EventModel {
    static func random(
        id: String = String.random(),
        name: String = String.random(),
        imageName: String,
        date: Date = Date(),
        local: String = String.random(),
        participants: [UserModel] = [UserModel.random()],
        tickets:[TicketModel] = [TicketModel.random()]
    ) -> EventModel {
        return EventModel(id: id, name: name, imageName: imageName, date: date, local: local, participants: participants, tickets: tickets)
    }
}
