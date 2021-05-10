//
//  Session.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

class Session: ObservableObject {
    private let currentUser: UserModel
    
    @Published var event = EventsRepository()
//    @Published var ticket = TicketRepository()

    init() {
//        let event = EventsRepository().getEvents()[3]
//        let userTicket = PurchasedTicketModel(ticket: event.tickets[1], event: event)
        self.currentUser = UserModel.random(name: "Juliana Moreira", imageName: "userImage1", userTickets: [])
    }
    
    func getCurrentUser() -> UserModel {
        return currentUser
    }
}
