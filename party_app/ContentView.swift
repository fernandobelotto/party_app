//
//  ContentView.swift
//  party_app
//
//  Created by Fernando Gabriel Belotto Bosco on 26/04/21.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(Color("black"))
      }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Início", systemImage: "house.fill")
                        .accentColor(.red)
                }
            TicketView()
                .tabItem {
                    Label("Tickets", systemImage: "ticket.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Order", systemImage: "person.crop.circle.fill")
                }
        }.accentColor(Color("accent"))

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

struct ProfileView: View {
    var body: some View {
        Text("Perfil")
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home")
    }
}
