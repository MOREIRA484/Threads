//
//  RegistrationView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var passWord = ""
    @State private var fullName = ""
    @State private var userName = ""
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("threads-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 10)
                    .padding(.top)
                
                SecureField("Enter your password", text: $passWord)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 10)
                
                TextField("Enter your full name", text: $fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 10)
                    
                
                TextField("Enter your username", text: $userName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 10)
                   
                
                Button {
                    
                } label: {
                    Text("Sing up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(12)
                       
                
                }
                .padding(.vertical)
            }
            Spacer()
            
            Divider()
            
            
            
            
            Button {
                
            } label: {
                HStack {
                    Text("Already have an account?")
                        
                    
                    Text("Sing in")
                        .fontWeight(.semibold)
                        
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
