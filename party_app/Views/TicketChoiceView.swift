//
//  TicketChoiceScreen.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 07/05/21.
//

import SwiftUI

struct TicketChoiceView: View {
    
    @State var selected = [false, false, false]
    @State var ticketCards = [
        TicketCard(label: "PISTA", price: "R$20,00", color: Color("8")),
        TicketCard(label: "VIP", price: "R$30,00", color: Color("8")),
        TicketCard(label: "CAMAROTE", price: "R$40,00", color: Color("8"))
    ]
    
    var body: some View {
        ZStack (alignment: .center) {
            Card(color: Color("Black"))
            
            VStack (alignment: .center) {
                Text("Chopada da Agrícola")
                    .modifier(MyText(color: Color("White"), type: .H2))
                    .padding(.top, 24.0)
                
                Text("1º lote")
                    .modifier(MyText(color: Color("White"), type: .Small))
                    .padding(.top, 8.0)
                
                Spacer()
                
                VStack (alignment: .center) {
                    ForEach(0 ..< 3) { i in
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
