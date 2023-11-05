//
//  BicycleListView.swift
//  LeadYourWay
//
//  Created by user248115 on 10/29/23.
//

import SwiftUI

struct BicycleListView: View {
    
    var first_bike = ["1-1","1-2","1-3","1-4"]
    var second_bike = ["2-1","2-2","2-3","2-4"]
    var third_bike = ["3-1","3-2","3-3","3-4"]
    var foruth_bike = ["4-1","4-2","4-3","4-4"]
    var fifth_bike = ["5-1","5-2","5-3","5-4"]
    
    var body: some View {
        NavigationStack{
            
            ScrollView{
                LazyVStack(spacing: 32){
                    SearchBarView()
                    
                    BicycleListItem(images: first_bike, location: "Larcomar, Miraflores", distance: "1.4 km", name: "Hightower 3", price: "S/. 5.00 x day", rating: "4.1")
                    
                    BicycleListItem(images: second_bike, location: "Parque Maria Reiche, Miraflores", distance: "1.8 km", name: "Tallboy", price: "S/. 12.00 x day", rating: "5.0")
                    
                    
                    BicycleListItem(images: third_bike, location: "Av Benavides, Miraflores", distance: "2.1 km", name: "Highball", price: "S/. 9.00 x day", rating: "4.9")
                    
                    BicycleListItem(images: foruth_bike, location: "Parque Kennedy, Miraflores", distance: "1.9 km", name: "V10", price: "S/. 7.00 x day", rating: "4.7")
                    
                    
                    BicycleListItem(images: fifth_bike, location: "Parque del amor, Miraflores", distance: "3.2 km", name: "Heckler", price: "S/. 5.00 x day", rating: "4.1")
                    
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    BicycleListView()
}
