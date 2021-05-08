//
//  ProfileView.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 08/05/21.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var session = Session()
    
    var body: some View {
        VStack (alignment: .center) {
            Text("Profile")
                .modifier(MyText(color: Color("White"), type: .H1))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 24)
            ZStack (alignment: .center) {
                Card(color: Color("Black"))
                    .padding(24)
                
                VStack (alignment: .center) {
                    Image(session.getCurrentUser().imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 230.2, height: 344.5)
                        .clipped()
                        .frame(width: 230.2, height: 344.5)
    
                    Text(session.getCurrentUser().name)
                        .multilineTextAlignment(.center)
                        .modifier(MyText(color: .white, type: .H2))
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        MyButton(text: "Payment methods", type: .Primary)
                    }
                    
                    Button(action: {
                        
                    }) {
                        MyButton(text: "Edit Profile", type: .Primary)
                    }
                    
                    Button(action: {
                        
                    }) {
                        MyButton(text: "Sign out", type: .Primary)
                    }
                    
                    Spacer()
                }
            }
        }.modifier(Background())
    }
}
