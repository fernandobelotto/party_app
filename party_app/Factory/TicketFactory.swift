//
//  TicketModelFactory.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

extension TicketModel {
    static func random(
        description: String = "Ticket \(Int.random(in: 1...1000)) description",
        price: Double = Double.random(in: 1..<75)
    ) -> TicketModel {
        return TicketModel(description: description, price: price)
    }
}
