
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
            
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .accentColor(Color(.systemBlue))
                .onAppear {
                    viewModel.checkIfLocationServiceIsEnabled()
                }
        }
        .searchable(text: $searchLocation, prompt: "Where are you?")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
