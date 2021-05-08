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
                    Label("Profile", systemImage: "person.crop.circle.fill")
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
    @StateObject var session = Session()
    var body: some View {
        VStack {
            Text("Profile")
                .modifier(MyText(color: .white, type: .H1))
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 24)
                .padding(.trailing, 24)
                .padding(.top, 64)
            ZStack {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: .infinity, height: .infinity, alignment: .center)
                    .padding()
                VStack {
                    Image(session.getCurrentUser().imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 230.2, height: 344.5)
                        .clipped()
                        .frame(width: 230.2, height: 344.5)
    
                    Text(session.getCurrentUser().name)
                        .multilineTextAlignment(.center)
                        .modifier(MyText(color: .white, type: .H2))
                    
                    ActionButton(text: "Payment methods", action: {})
                    ActionButton(text: "Edit Profile", action: {})
                        .padding()
                    ActionButton(text: "Sign out", action: {})
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }.modifier(Background())
    }
}

struct ActionButton: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(Color(#colorLiteral(red: 0.2666666805744171, green: 0.7568627595901489, blue: 0.9254902005195618, alpha: 1)))
            .frame(width: 304, height: 40)
            .overlay(
                Button(text, action: action)
                    .modifier(MyText(color: .black, type: .Regular))
            )
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home")
    }
}
