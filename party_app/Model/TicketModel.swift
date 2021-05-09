//
//  TicketModel.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

struct TicketModel: Codable, Identifiable {
    var id: String
    let description: String
    let price: Double
    var displayablePrice: String {
        get {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.currencyCode = "brl"
            formatter.maximumFractionDigits = 2

            let number = NSNumber(value: price)
            return formatter.string(from: number)!
        }
    }
}
