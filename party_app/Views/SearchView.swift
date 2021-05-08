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
            
            if self.searchText.isEmpty {
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
    var body: some View {
        ZStack (alignment: .top) {
            GeometryReader { geometry in
                Card(color: Color("Black"))
                    .frame(maxWidth: .infinity, minHeight: geometry.size.height * 2)
                
                ScrollView {
                    VStack (alignment: .leading) {
                        ForEach(0 ..< 20) { i in
                            Text("Person number \(i)")
                                .modifier(MyText(color: Color("White"), type: .H2))
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
