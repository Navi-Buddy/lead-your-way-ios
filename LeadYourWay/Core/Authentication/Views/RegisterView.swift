//
//  RegisterView.swift
//  LeadYourWay
//
//  Created by user245074 on 9/27/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullName = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("transparent_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height: 120)
                    .padding()
                
                VStack{
                    
                        TextField("Full name", text: $fullName)
                            .modifier(TextFieldModifier())
                    
                        TextField("Username", text: $username)
                            .modifier(TextFieldModifier())
                        
                        TextField("Email", text: $email)
                            .modifier(TextFieldModifier())
                        
                        SecureField("Password", text: $password)
                            .modifier(TextFieldModifier())
                    
                }
                
                Button {
                    
                } label:{
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width:352,height:44)
                        .background(.blue)
                        .cornerRadius(8)
                }
                
                
                Spacer()
                Divider()
                
                NavigationLink{
                    LoginView()
                } label: {
                    HStack (spacing: 4){
                        Text("Already have an account?")
                        Text("Sign In")
                    }
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
