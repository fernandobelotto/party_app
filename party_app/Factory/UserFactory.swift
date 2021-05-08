//
//  UserModelFactory.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

extension UserModel {
    static func random(
        name: String = String.random(),
        imageName: String = "userImage\(Int.random(in: 1...6))",
        userTickets: [PurchasedTicketModel] = []
    ) -> UserModel {
        return UserModel(name: name, imageName: imageName, userTickets: userTickets)
    }
}
