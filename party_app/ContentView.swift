//
//  ContentView.swift
//  party_app
//
//  Created by Fernando Gabriel Belotto Bosco on 26/04/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var session = Session()
    let eventsRepository = EventsRepository()
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(Color("Black"))
      }
    var body: some View {
        TabView {
            EventListView(eventsRepository: self.eventsRepository)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            MyEventsView(session: session)
                .tabItem {
                    Label("Tickets", systemImage: "ticket.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
            
        }.accentColor(Color("1"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12")
        }
    }
}
