//
//  DateCard.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 06/05/21.
//

import SwiftUI

struct DateCard: View {
    let color: Color?
    let monthString: String
    let dayString: String

    init(color: Color?, date: Date) {
        self.color = color
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd"
        self.dayString = formatter.string(from: date)
        
        formatter.dateFormat = "MMMM"
        self.monthString = String(formatter.string(from: date).uppercased().prefix(3))
    }
    
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 8.0)
                .fill(self.color ?? Color("3"))
            VStack (alignment: .center) {
                Text(self.monthString)
                    .modifier(MyText(color: Color("White"), type: .Regular))
                Text(self.dayString)
                    .modifier(MyText(color: Color("White"), type: .Regular))
            }
        }
        .frame(width: 56.0, height: 56.0)
    }
}
