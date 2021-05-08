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
        
        //event 1
        let eventDate1 = dateFormatter.date(from: "2021-09-27T22:00:00")!
        let participants1 = [UserModel.random(), UserModel.random(), UserModel.random(), UserModel.random()]
        let tickets = [TicketModel(description: "Pista - 1 lote", price: 25), TicketModel(description: "Vip - 1 lote", price: 35), TicketModel(description: "Camarote - 1 lote", price: 50)]
        let event1 = EventModel.random(name: "Chopada da Agrícola", imageName: "ChopadaDaAgricola", date: eventDate1, local: "Barão Geraldo", participants: participants1, tickets: tickets)
        
        //event 2
        let eventDate2 = dateFormatter.date(from: "2021-09-01T22:00:00")!
        let participants2 = [UserModel.random(), UserModel.random(), UserModel.random(), UserModel.random()]
        let event2 = EventModel.random(name: "Subindo o morro", imageName: "SubindoOMorro", date: eventDate2, local: "Descubra", participants: participants2, tickets: tickets)
        
        //event 3
        let eventDate3 = dateFormatter.date(from: "2021-10-25T22:00:00")!
        let participants3 = [UserModel.random(), UserModel.random(), UserModel.random(), UserModel.random()]
        let event3 = EventModel.random(name: "Biorgia", imageName: "Biorgia", date: eventDate3, local: "Prime Hall", participants: participants3, tickets: tickets)
        
        //event 4
        let eventDate4 = dateFormatter.date(from: "2021-11-05T22:00:00")!
        let participants4 = [UserModel.random(), UserModel.random(), UserModel.random(), UserModel.random()]
        let event4 = EventModel.random(name: "Interpiscinas", imageName: "Interpiscinas", date: eventDate4, local: "Rua Shigeo Mori, 923", participants: participants4, tickets: tickets)

        events = [event1, event2, event3, event4]
    }
    

    func getEvents() -> [EventModel] {
        return events
    }
}
