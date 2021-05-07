//
//  TicketDetailView.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 07/05/21.
//

import SwiftUI

struct TicketDetailView: View {
    var body: some View {
        ZStack (alignment: .center) {
            Card(color: Color("Black"))
            
            VStack (alignment: .center) {
                Text("Chopada da Agrícola")
                    .modifier(MyText(color: Color("White"), type: .H2))
                    .padding(.top, 24.0)
                
                Spacer()
                
                VStack (alignment: .leading) {
                    FieldValue(
                        field: "name",
                        value: "Juliana Moreira"
                    )
                    
                    FieldValue(
                        field: "local",
                        value: "Barão Geraldo"
                    )
                    
                    FieldValue(
                        field: "date",
                        value: "seg, 05/02/2047"
                    )
                    
                    FieldValue(
                        field: "time",
                        value: "22:00h - 04:00h"
                    )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 32.0)
                
                Spacer()
                
                QRCode()
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    MyButton(text: "Save ticket", type: .Primary)
                }
                .padding(.bottom, 24.0)
            }
        }
        .padding(24.0)
        .modifier(Background())
    }
}

struct QRCode: View {
    var body: some View {
        Card(color: Color("White"))
            .frame(width: 120.0, height: 120.0)
    }
}
