//
//  EventPreview.swift
//  party_app
//
//  Created by Gabriel Oliveira Borges on 08/05/21.
//

import SwiftUI

struct EventPreview: View {
    var event: EventModel
    var body: some View {
        ZStack {
            Card(color: Color("Black"))
                .frame(height: 200.0)
            
            VStack {
                Image(event.imageName)
                    .resizable()
                    .frame(height: 128.0)
                VStack(alignment: .leading) {
                    Text(event.name)
                        .modifier(MyText(color: Color("White"), type: .H2))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(event.local)
                        .modifier(MyText(color: Color("White"), type: .Small))
                    Text(event.getDateAndTime())
                        .modifier(MyText(color: Color("White"), type: .Small))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16.0)
                .padding(.bottom, 24.0)
            }
        }
        .cornerRadius(25)
    }
}

struct EventPreview_Previews: PreviewProvider {
    static var previews: some View {
        EventPreview(event: EventModel.random(imageName: "ChopadaDaAgricola")).previewLayout(.sizeThatFits)
    }
}
