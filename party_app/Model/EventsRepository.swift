//
//  EventsRepository.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

class EventsRepository {
    private var events: [EventModel] = []
    
    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        
        let tickets = [
            TicketModel(description: "Pista", price: 25),
            TicketModel(description: "Vip", price: 35),
            TicketModel(description: "Camarote", price: 50)
        ]
        
        let participants = UsersRepository().getUsers()

        //event 1
        let eventDate1 = dateFormatter.date(from: "2021-09-27T22:00:00")!
        let event1 = EventModel.random(name: "Chopada da Agrícola", imageName: "ChopadaDaAgricola", date: eventDate1, local: "Barão Geraldo", participants: participants, tickets: tickets)
        
        //event 2
        let eventDate2 = dateFormatter.date(from: "2021-09-01T16:00:00")!
        let event2 = EventModel.random(name: "Subindo o morro", imageName: "SubindoOMorro", date: eventDate2, local: "Descubra", participants: participants, tickets: tickets)
        
        //event 3
        let eventDate3 = dateFormatter.date(from: "2021-10-25T04:00:00")!
        let event3 = EventModel.random(name: "Biorgia", imageName: "Biorgia", date: eventDate3, local: "Prime Hall", participants: participants, tickets: tickets)
        
        //event 4
        let eventDate4 = dateFormatter.date(from: "2021-11-05T13:00:00")!
        let event4 = EventModel.random(name: "Interpiscinas", imageName: "Interpiscinas", date: eventDate4, local: "Rua Shigeo Mori, 923", participants: participants, tickets: tickets)

        self.events = [event1, event2, event3, event4]
    }
    

    func getEvents() -> [EventModel] {
        return self.events
    }
}
