//
//  CardResposta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 17/11/23.
//

import SwiftUI

struct CardResposta: View, Identifiable {
    let id = UUID()
    let autor: String
    let texto: String
    let data: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            HStack {
                Text(data.formatted())
                Spacer()
                Text(autor)
                    .font(.callout)
            }
            
            HStack {
                Text(texto)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
            }
            
            HStack {
                Spacer()
                Image(systemName: "hand.thumbsup")
                Image(systemName: "hand.thumbsdown")
            }
        }
    }
}

#Preview {
    ZStack {
        
        CardResposta(autor: "Joel", texto: "Esse elemento é o oxigênio.", data: Date.now)
            .padding(10)
            .border(Color.black)
    }
    .padding(10)
}
