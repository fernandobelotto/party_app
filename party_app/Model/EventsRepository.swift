//
//  EventsRepository.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 07/05/21.
//

import Foundation

class EventsRepository: ObservableObject {
    @Published var events: [EventModel] = []
    
    init() {
         guard let url = URL(string: "https://academy-party-api.herokuapp.com/v1/partys?populate=tickets,participants") else { return }
         
         URLSession.shared.dataTask(with: url) {(data, response, error) in
             do {
                 if data != nil {
                     let decoder = JSONDecoder()
                     // format data as string to Date type in swift
                     let formatter = DateFormatter()
                     formatter.calendar = Calendar(identifier: .iso8601)
                     formatter.locale = Locale(identifier: "en_US_POSIX")
                     formatter.timeZone = TimeZone(secondsFromGMT: 0)
                     formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
                     decoder.dateDecodingStrategy = .formatted(formatter)
                     // decode json data to swift array
                     let decodedData = try decoder.decode([EventModel].self, from: data!)
                     
                     DispatchQueue.main.async {
                         self.events = decodedData
                     }
                     
                 } else {
                     print("no partys")
                 }
             } catch let error {
                 print(error)
             }
         }.resume()
     }
    

    func getEvents() -> [EventModel] {
        return self.events
    }
}
