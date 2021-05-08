//
//  EventModel.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation


struct EventModel: Identifiable {
    var id = Double.random(in: 0...10000)
    let name: String
    let date: Date
    var participants: [UserModel]
    var tickets: [TicketModel]
    
    func getTickets() -> [TicketModel] {
        return self.tickets.sorted { a, b in
            return a.price < b.price
        }
    }
    
    func getParticipants() -> [UserModel] {
        return self.participants.sorted { a, b in
            return a.name < b.name
        }
    }
    
    func getDateAndTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy-hh:mm"
        return dateFormatter.string(from: date)
    }
    
    func getStartingTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        return dateFormatter.string(from: date)
    }
}
