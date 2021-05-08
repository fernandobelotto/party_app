//
//  Session.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

class Session: ObservableObject {
    private let currentUser: UserModel

    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        
        let eventDate = dateFormatter.date(from: "2021-09-27T22:00:00")!
        let participants = [UserModel.random(), UserModel.random(), UserModel.random() ,UserModel.random()]
        let tickets = [TicketModel(description: "Pista - 1 lote", price: 25), TicketModel(description: "Vip - 1 lote", price: 35), TicketModel(description: "Camarote - 1 lote", price: 50)]
        
        let event = EventModel.random(name: "Chopada da Agrícola", imageName: "ChopadaDaAgricola", date: eventDate, local: "Barão Geraldo", participants: participants, tickets: tickets)
        
        let userTicket = PurchasedTicketModel(ticket: tickets[0], event: event)
        currentUser = UserModel.random(name: "Juliana Moreira", imageName: "userImage1", userTickets: [userTicket])
    }
    
    func getCurrentUser() -> UserModel {
        return currentUser
    }
}
