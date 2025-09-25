//
//  ContentView.swift
//  Transporte
//
//  Created by WIN603 on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var cardSelected: Int = -1
    @State var pressedPadre: Bool = false
    @State var destino: String = ""
    var body: some View {
        ScrollView{
            
            Text("Content view \(cardSelected)")
            
            TextField("¿A dónde quieres ir?", text: $destino )
            Text("Viajaras a \(destino)")
    
        
        ScrollView(.horizontal){
            HStack{
                
                TransportesView(pressed: $pressedPadre,name:"Avion", image: "airplane",index: 0,selectIndex: $cardSelected)
                TransportesView(pressed: $pressedPadre,name:"Tren", image: "train",index: 1,selectIndex: $cardSelected)
                TransportesView(pressed: $pressedPadre,name:"Barco", image: "sailboat",index: 2,selectIndex: $cardSelected)
               
            }
        }
        
        VStack {
            TrainCarView(name: "Muchipicho", ionColor: .black)
            TrainCarView(name: "Vladimir Loco", ionColor: .gray)
            TrainCarView(name: "Tigre Ferroz", ionColor: .cyan)
        }
       
        
    }
}
        
    
}

#Preview {
    ContentView()
}
