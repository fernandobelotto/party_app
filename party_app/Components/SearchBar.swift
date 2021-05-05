//
//  SearchBar.swift
//  party_app
//
//  Created by Leonardo de Sousa Rodrigues on 05/05/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State var isEditing = false
    
    var body: some View {
        HStack (alignment: .center) {
            HStack (alignment: .center) {
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 8)
                TextField("Search ...", text: $text)
                    .accentColor(Color("Black"))
                    .modifier(MyText(color: Color("Black"), type: .Regular))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .onTapGesture {
                        withAnimation {
                            self.isEditing = true
                        }
                    }
                
                Spacer()
                
                if isEditing {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(Color("3"))
                            .padding(.trailing, 8)
                    }
                    .transition(.opacity.combined(with: .move(edge: .trailing)))
                }
                
            }
            .background(Color("White"))
            .cornerRadius(4)
            
            if isEditing {
                Button(action: {
                    self.text = ""
                    withAnimation {
                        self.isEditing = false
                    }
                    
                    // Dismiss keyboard
//                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                        .modifier(MyText(color: Color("White"), type: .Regular))
                }
                .padding(.leading, 8)
            }
        }
        .padding(.horizontal, 23)
    }
}
