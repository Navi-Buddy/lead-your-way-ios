//
//  ProfileView.swift
//  LeadYourWay
//
//  Created by user248115 on 10/29/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 32){
                
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                }
                
                
                Button{
                    print("Log in")
                }label:{
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            
            VStack(spacing: 24){
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accesibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
                ProfileOptionRowView(imageName: "book", title: "Privacy conditions")
                ProfileOptionRowView(imageName: "book", title: "Terms of service")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
