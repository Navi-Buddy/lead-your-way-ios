//
//  ProfileView.swift
//  LeadYourWay
//
//  Created by user245074 on 9/20/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var showHistory: Bool = false
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 10){
                    
                    
                    HStack(spacing:15){
                        Circle()
                            .frame(width: 100, height: 100)
                        
                        
                        VStack(spacing:15){
                            Text("Lorenzo Navarro")
                            
                            //StatsView()
                        }
                    }
                    
                    
                    
                    //Options view
                    
                    Text("Acerca de ti")
                        .font(.title3)
                    
                    
                    
                    
                    //StatsView()
                    
                    
                    // Booking history
                    bookingHistoryToggle
                    bookingHistory
                    
                }
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



extension ProfileView{
    
    
    var bookingHistoryToggle: some View {
        VStack(spacing:50){
            HStack(spacing: 30){

                Toggle(isOn: $showHistory){
                    Text("Your previous bookings")
                        .font(.title3)
                }
                .toggleStyle(SwitchToggleStyle(tint: .black))
                
            }
        }
        .padding()
    }
    
    var bookingHistory: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: 4){
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.gray)
                        .frame(width:200, height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
    }
    
    
    
}
