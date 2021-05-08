//
//  UsersRepository.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 08/05/21.
//

import Foundation

class UsersRepository {
    private var users: [UserModel] = []
    
    init() {
        self.users.append(UserModel.random(name: "Juliana Moreira", imageName: "userImage1", userTickets: []))
        self.users.append(UserModel.random(name: "Felipe Dias", imageName: "userImage2", userTickets: []))
        self.users.append(UserModel.random(name: "Dante Freitas", imageName: "userImage3", userTickets: []))
        self.users.append(UserModel.random(name: "Armando Rocha", imageName: "userImage4", userTickets: []))
        self.users.append(UserModel.random(name: "Joyce Ribeiro", imageName: "userImage5", userTickets: []))
        self.users.append(UserModel.random(name: "Gilberto Flores", imageName: "userImage6", userTickets: []))
    }
    
    func getUsers() -> [UserModel] {
        return self.users
    }
}
