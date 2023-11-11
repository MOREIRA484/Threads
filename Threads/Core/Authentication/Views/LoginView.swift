//
//  LoginView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct LoginView: View {
    
    
    @StateObject private var viewModel = loginViewModel()
    
    
    var body: some View {
        NavigationStack {
            
            VStack {
                
                Spacer()
                
                Image("threads-logo")
                    .resizable()
                    .scaledToFit()
                .frame(width: 120, height: 120)
                
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter your password", text: $viewModel.passWord)
                        .modifier(ThreadsTextFieldModifier())
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
                    Task { try await viewModel.login()}
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
                   RegistrationView()
                        .navigationBarBackButtonHidden(true)
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
