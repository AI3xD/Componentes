//
//  TrainCarView.swift
//  Transporte
//
//  Created by WIN603 on 22/09/25.
//

import SwiftUI

struct TrainCarView: View {
    var name: String
    var ionColor : Color
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Text("Oferta")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(ionColor)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            Image(systemName: "tram.circle.fill")
                .font(.system(size: 90, weight: .light, design: .default))
                .foregroundColor(ionColor)
                .aspectRatio(contentMode: .fit )
                .frame(width: 120, height: 100)
            
            Text(name)
                .font(.largeTitle)
                .lineLimit(1)
                .truncationMode(.middle)
                .padding(.bottom)
                .frame(maxWidth: .infinity)
            
        }.modifier(CardViewModifier())
        
    }
}

#Preview {
    TrainCarView(name:"Tren Nala Hikari", ionColor: .blue)
}
