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
        VStack {
            Image(event.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 164)
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.black)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                VStack(alignment: .leading) {
                    Text(event.name)
                        .modifier(MyText(color: .white, type: .H2))
                        .frame(width: .infinity, alignment: .leading)
                    Text(event.local)
                        .modifier(MyText(color: .white, type: .Regular))
                    Text(event.getDateAndTime())
                        .modifier(MyText(color: .white, type: .Regular))
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 18)
                .padding(.bottom, 5)
            }
        }.cornerRadius(25)
    }
}

struct EventPreview_Previews: PreviewProvider {
    static var previews: some View {
        EventPreview(event: EventModel.random(imageName: "ChopadaDaAgricola")).previewLayout(.sizeThatFits)
    }
}
