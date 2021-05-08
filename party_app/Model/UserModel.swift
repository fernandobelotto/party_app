//
//  UserModel.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

struct UserModel: Identifiable {
    var id = Double.random(in: 0...10000)
    let name: String
    let imageName: String
    var userTickets: [PurchasedTicketModel] = []
    
    mutating func addTicket(_ ticket: PurchasedTicketModel) {
        self.userTickets.append(ticket)
    }
}
