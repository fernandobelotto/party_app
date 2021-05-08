//
//  TicketChoiceScreen.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 07/05/21.
//

import SwiftUI

struct TicketChoiceView: View {
    
    let event: EventModel
    @State var selected: [Bool] = []
    @State var ticketCards: [TicketCard] = []
    
    init(_ event: EventModel) {
        self.event = event
        var initSelected = [Bool]()
        var initTicketCards = [TicketCard]()
        
        for ticketModel in self.event.getTickets() {
            initSelected.append(false)
            initTicketCards.append(TicketCard(
                label: ticketModel.description,
                price: ticketModel.displayablePrice,
                color: Color("8")
            ))
        }
        
        _selected = State(initialValue: initSelected)
        _ticketCards = State(initialValue: initTicketCards)
    }
    
    var body: some View {
        ZStack (alignment: .center) {
            Card(color: Color("Black"))
            
            VStack (alignment: .center) {
                Text(self.event.name)
                    .modifier(MyText(color: Color("White"), type: .H2))
                    .padding(.top, 24.0)
                
                Text("1º lote")
                    .modifier(MyText(color: Color("White"), type: .Small))
                    .padding(.top, 8.0)
                
                Spacer()
                
                VStack (alignment: .center) {
                    ForEach(0 ..< self.selected.count) { i in
                        Button(action: {
                            self.select(i)
                        }) {
                            self.ticketCards[i]
                        }
                    }
                }
                .padding(.horizontal, 32.0)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    MyButton(text: "Buy", type: .Primary)
                }
                .disabled(self.selected.allSatisfy({ isSelected in return !isSelected }))
                .padding(.bottom, 24.0)
            }
        }
        .padding(24.0)
        .modifier(Background())
    }
    
    func select(_ which: Int) {
        for i in 0 ..< self.selected.count {
            if i == which {
                self.selected[i] = true
                self.ticketCards[i].setColor(Color("1"))
            } else {
                self.selected[i] = false
                self.ticketCards[i].setColor(Color("8"))
            }
        }
    }
}
