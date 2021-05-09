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
                    .modifier(MyText(color: Color("White"), type: .H1))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 32.0)
                    .padding(.bottom, 0.0)
                
                ForEach(eventsRepository.getEvents()) { event in
                    NavigationLink(
                        destination: EventDetailsView(event: event),
                        label: {
                            EventPreview(event: event)
                                .padding(.horizontal, 24.0)
                        })
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
