//
//  EventListView.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 08/05/21.
//

import SwiftUI

struct EventListView: View {
    var eventsRepository: EventsRepository

    var body: some View {
        VStack {
            ScrollView {
                Text("Next to you")
                    .frame(maxWidth: .infinity, alignment: Alignment.leading)
                    .padding(.leading, 28)
                    .modifier(MyText(color: .white, type: .H1))
                
                ForEach(eventsRepository.getEvents()) { event in
                    EventPreview(event: event)
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.bottom)
                }
            }
        }.modifier(Background())
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView(eventsRepository: EventsRepository())
    }
}
