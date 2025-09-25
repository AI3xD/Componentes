//
//  TransportesView.swift
//  Transporte
//
//  Created by WIN603 on 22/09/25.
//

import SwiftUI

struct TransportesView: View {
    @Binding var pressed: Bool
    var name : String
    var image : String
    var index : Int
    @Binding var selectIndex : Int
    
    func Labelpresionado() ->CGFloat{
        return pressed ? 180 : 0
    }
    var body: some View {
       VStack {
           Label(name,systemImage: image).modifier(CardViewModifier(bgColor:.mint))
               .rotationEffect(.degrees(Labelpresionado()))
               .onTapGesture {
                   withAnimation(.easeInOut(duration: 0.5)){
                       self.selectIndex = self.index
                       self.pressed.toggle()
                    
                   }
                   
               }
           Text("Index selecionado es \(selectIndex)")
           
        }
    }
}

#Preview {
    TransportesView(pressed: .constant(false), name:"Barco", image:"sailboat",index: -1,selectIndex: .constant(-1))
}
