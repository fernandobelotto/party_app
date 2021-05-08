//
//  SearchView.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 05/05/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        VStack (alignment: .leading) {
            SearchBar(text: $searchText)
            
            Spacer()
            
            if !self.searchText.isEmpty {
                Text("Search Results")
                    .modifier(MyText(color: Color("White"), type: .H1))
                    .padding(.horizontal, 32.0)
                    .padding(.top, 16.0)
                
                ZStack (alignment: .top) {
                    GeometryReader { geometry in
                        Card(color: Color("Black"))
                            .frame(maxWidth: .infinity, minHeight: geometry.size.height * 2)
                        
                        ScrollView {
                            VStack (alignment: .leading) {
                                ForEach(EventsRepository().getEvents()) { event in
                                    if event.name.lowercased().contains(searchText.lowercased()) {
                                        Text(event.name)
                                            .modifier(MyText(color: Color("White"), type: .Regular))
                                            .padding(.vertical, 12.0)
                                    }
                                }
                                
                                ForEach(UsersRepository().getUsers()) { user in
                                    if user.name.lowercased().contains(searchText.lowercased()) {
                                        HStack (alignment: .center) {
                                            Image(user.imageName)
                                                .resizable()
                                                .frame(width: 48.0, height: 48.0)
                                                .padding(.trailing, 16.0)
                                            Text(user.name)
                                                .modifier(MyText(color: Color("White"), type: .Regular))
                                        }
                                        .padding(.vertical, 12.0)
                                    }
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 32.0)
                        }
                        .preferredColorScheme(.dark)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 12.0)
                    }
                }
                .padding(.horizontal, 24.0)
                
            } else {
                Text("Recent")
                    .modifier(MyText(color: Color("White"), type: .H1))
                    .padding(.horizontal, 32.0)
                    .padding(.top, 16.0)
                
                RecentCard()
                    .padding(.horizontal, 24.0)
            }
        }
        .modifier(Background())
    }
}

struct RecentCard: View {
    let recentEvents = EventsRepository().getEvents()
    let recentUsers = UsersRepository().getUsers()
    
    var body: some View {
        ZStack (alignment: .top) {
            GeometryReader { geometry in
                Card(color: Color("Black"))
                    .frame(maxWidth: .infinity, minHeight: geometry.size.height * 2)
                
                ScrollView {
                    VStack (alignment: .leading) {
                        ForEach(recentEvents) { event in
                            Text(event.name)
                                .modifier(MyText(color: Color("White"), type: .Regular))
                                .padding(.vertical, 12.0)
                        }
                        
                        ForEach(recentUsers) { user in
                            HStack (alignment: .center) {
                                Image(user.imageName)
                                    .resizable()
                                    .frame(width: 48.0, height: 48.0)
                                    .padding(.trailing, 16.0)
                                Text(user.name)
                                    .modifier(MyText(color: Color("White"), type: .Regular))
                            }
                            .padding(.vertical, 12.0)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 32.0)
                }
                .preferredColorScheme(.dark)
                .frame(maxWidth: .infinity)
                .padding(.top, 12.0)
            }
        }
    }
}
