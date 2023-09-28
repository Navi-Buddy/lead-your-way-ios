//
//  LoginView.swift
//  LeadYourWay
//
//  Created by user245074 on 9/27/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("transparent_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height: 120)
                    .padding()
                
                VStack{
                    
                        TextField("Your email goes here...", text: $email)
                        .modifier(TextFieldModifier())
                        
                        SecureField("Your password goes here...", text: $password)
                        .modifier(TextFieldModifier())
                }
                
                NavigationLink{
                    PasswordRecoveryView()
                } label:{
                    Text("Forgot password?")
                        .font(.footnote)
                        .padding(.vertical)
                        .fontWeight(.semibold)
                        .padding(.trailing,26)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                NavigationLink{
                    NavTabView()
                } label:{
                    Text("Login")
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
                    RegisterView()
                } label: {
                    HStack (spacing: 4){
                        Text("Don't have an account?")
                        Text("Sign Up")
                    }
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


