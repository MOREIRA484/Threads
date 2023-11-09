//
//  CreateThreadView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct CreateThreadView: View {
    
    @State private var Thread = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        NavigationStack {
            
            VStack {
                HStack{
                    
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("maxverstappen1")
                        
                        TextField("Start a Thread", text: $Thread, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !Thread.isEmpty {
                        Button{
                            Thread = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                Spacer()
            }
                .padding()
                .navigationTitle("New Thread")
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button("Post") {
                            
                        }
                        .opacity(Thread.isEmpty ? 0.5 : 1.0)
                        .disabled(Thread.isEmpty)
                    }
                }
              
                .fontWeight(.semibold)
                .font(.subheadline)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    CreateThreadView()
}
