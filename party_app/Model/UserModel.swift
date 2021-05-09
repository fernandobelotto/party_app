//
//  UserModel.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

struct UserModel: Codable, Identifiable {
    var id: String
    let name: String
    let imageName: String
    var userTickets: [PurchasedTicketModel] = []
    
    mutating func addTicket(_ ticket: PurchasedTicketModel) {
        self.userTickets.append(ticket)
    }
}
