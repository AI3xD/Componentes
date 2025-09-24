//
//  ContentView.swift
//  Transporte
//
//  Created by WIN603 on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            
    
        
        ScrollView(.horizontal){
            HStack{
                
                TransportesView(name:"Avion", image: "airplane")
                TransportesView(name:"Tren", image: "train")
                TransportesView(name:"Barco", image: "sailboat")
               
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
