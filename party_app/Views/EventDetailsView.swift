//
//  EventDetailsView.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 06/05/21.
//

import SwiftUI

struct EventDetailsView: View {
    @State private var showingSheet = false

    var body: some View {
        ZStack (alignment: .top) {
            GeometryReader { geometry in
                Card(color: Color("Black"))
                    .frame(maxWidth: .infinity, minHeight: geometry.size.height * 2)
                
                ScrollView {
                    VStack (alignment: .leading) {
                        
                        LocationCard()
                            .padding(.vertical, 16.0)
                        
                        VStack (alignment: .leading) {
                            Text("Chopada".uppercased())
                                .modifier(MyText(color: Color("White"), type: .Small))
                            
                            HStack (alignment: .center) {
                                Text("Chopada da Agrícola")
                                    .modifier(MyText(color: Color("White"), type: .H2))
                                    .fixedSize(horizontal: false, vertical: true)
                                
                                Spacer()
                                
                                DateCard(color: Color("3"))
                            }
                            
                            Text("Starting 10:00 pm")
                                .modifier(MyText(color: Color("White"), type: .Small))
                        }
                        .padding(.vertical, 16.0)
                        
                        Button(action: {
                            showingSheet.toggle()
                        }) {
                            VStack (alignment: .leading) {
                                Text("Who's going")
                                    .modifier(MyText(color: Color("White"), type: .Small))
                                
                                ScrollView (.horizontal) {
                                    HStack (alignment: .center) {
                                        ForEach(0 ..<  20) { i in
                                            Text("\(i)")
                                                .modifier(MyText(color: Color("White"), type: .H1))
                                        }
                                    }
                                }
                            }
                        }
                        .sheet(isPresented: $showingSheet) { EventDetailsSheetView() }
                        .padding(.vertical, 16.0)
                        
                        VStack (alignment: .leading) {
                            Text("Location")
                                .modifier(MyText(color: Color("White"), type: .Small))
                            
                            LocationCard()
                        }
                        .padding(.vertical, 16.0)
                        
                        Button(action: {
                            
                        }) {
                            MyButton(text: "Buy now", type: .Primary)
                        }
                        .padding(.vertical, 16.0)
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
        .modifier(Background())
    }
}

struct LocationCard: View {
    var body: some View {
        ZStack (alignment: .center) {
            Card(color: Color("White"))
            
            Image(systemName: "magnifyingglass")
                .frame(height: 160.0)
                .foregroundColor(Color("Black"))
        }
    }
}

struct EventDetailsSheetView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack (alignment: .center) {
            Color("Black")
                .edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .leading) {
                Text("Who's going")
                    .modifier(MyText(color: Color("White"), type: .H1))
                    .padding(.vertical, 24.0)
                    .padding(.horizontal, 32.0)
                
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
            }
        }
    }
}
