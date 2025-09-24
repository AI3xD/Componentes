//
//  TransportesView.swift
//  Transporte
//
//  Created by WIN603 on 22/09/25.
//

import SwiftUI

struct TransportesView: View {
    @State var pressed: Bool = false
    @State var name : String
    @State var image : String
    func Labelpresionado() ->CGFloat{
        return pressed ? 180 : 0
    }
    var body: some View {
       VStack {
           Label(name,systemImage: image).modifier(CardViewModifier(bgColor:.mint))
               .rotationEffect(.degrees(Labelpresionado()))
               .onTapGesture {
                   withAnimation(.easeInOut(duration: 0.5)){
                       self.pressed.toggle()
                   }
                   
               }
           
        }
    }
}

#Preview {
    TransportesView(name:"Barco", image:"sailboat")
}
