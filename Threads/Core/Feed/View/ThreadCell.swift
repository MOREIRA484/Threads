//
//  ThreadCell.swift
//  Threads
//
//  Created by leonardo Moreira on 08/11/23.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
               CircularProfileImageView()
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Maxverstappen1")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                            .padding(.trailing)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    
                    Text("formula 1 champion")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                             
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                             
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                                
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                               
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
