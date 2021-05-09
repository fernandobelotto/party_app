//
//  ContentView.swift
//  party_app
//
//  Created by Fernando Gabriel Belotto Bosco on 26/04/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var session = Session()
    
    init() {
//        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(Color("Black"))
    }
    
    var body: some View {
        TabView {
            NavigationView {
                EventListView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            
            NavigationView {
                SearchView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
         
            NavigationView {
                MyEventsView(session: session)
                    .navigationBarHidden(true)
            }
            .tabItem {
                Label("Tickets", systemImage: "ticket.fill")
            }
        
            NavigationView {
                ProfileView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                Label("Profile", systemImage: "person.crop.circle.fill")
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color("1"))
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
