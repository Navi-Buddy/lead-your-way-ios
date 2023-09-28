//
//  PasswordRecoveryView.swift
//  LeadYourWay
//
//  Created by user245074 on 9/27/23.
//

import SwiftUI

struct PasswordRecoveryView: View {
    @State private var username = ""
    @Environment (\.dismiss) var dismiss
    @State private var showRecovery = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("transparent_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height: 120)
                    .padding()
                
                
                TextField("Enter your email or username here...",text: $username)
                    .modifier(TextFieldModifier())
                    .padding(.bottom)
                
                Button {
                    //code here
                }label: {
                    Text("Send Recovery link")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width:352,height:44)
                        .background(.blue)
                        .cornerRadius(8)
                         }
                
                Spacer()
            }
        }
    }
}

struct PasswordRecoveryView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordRecoveryView()
    }
}
