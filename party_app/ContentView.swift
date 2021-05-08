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
            EventDetailsView(event: self.eventsRepository.getEvents()[0])
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            TicketChoiceView(eventsRepository.getEvents()[0])
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

struct TicketView: View {
    var body: some View {
        Text("Tickets")
    }
}


struct HomeView: View {
    var body: some View {
        Text("Home")
    }
}
