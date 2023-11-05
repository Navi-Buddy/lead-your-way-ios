
//
//  MapView.swift
//  LeadYourWay
//
//  Created by user245074 on 9/18/23.
//

import SwiftUI
import MapKit



struct MapView: View {
    
    @StateObject private var viewModel = MapViewModel()
    @State private var searchLocation = ""
    
    var body: some View {
        NavigationStack{            
            VStack{
                
                Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                    .ignoresSafeArea()
                    .accentColor(Color(.systemBlue))
                    .onAppear {
                        viewModel.checkIfLocationServiceIsEnabled()
                    }
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
