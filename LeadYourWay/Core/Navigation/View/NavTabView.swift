//
//  NavTabView.swift
//  LeadYourWay
//
//  Created by user245074 on 9/20/23.
//

import SwiftUI

struct NavTabView: View {
    @State private var index = 0
    var body: some View {
        TabView(selection: $index){
            
            
            //Messaging view
            InboxView()
                .tabItem{
                    Label("Inbox", systemImage: "message.badge")
                }
                .onAppear{index=0}
                .tag(0)
            
            
            
            // Map View
            MapView()
                .tabItem{
                    Label("Discover", image: "ios-bicycle-1-32")
                }
                .onAppear{index=1}
                .tag(1)
            
            //Profile View
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person")
                }
                .onAppear{index=2}
                .tag(2)
            
            
        }
    }
}

struct NavTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavTabView()
    }
}
