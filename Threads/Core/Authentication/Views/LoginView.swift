//
//  LoginView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var passWord = ""
    
    
    var body: some View {
        NavigationStack {
            
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
                }
                
                NavigationLink {
                    
                    Text("Forgot password ?")
                } label: {
                    
                    Text("Forgot password ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 10)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                    
                    
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(12)
                        .padding(.top)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Register View")
                } label: {
                    Text("Don't have an account ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("Sing Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
                
                
            }
            .padding(.horizontal, 32)
        }
    }
}

#Preview {
    LoginView()
}
