//
//  FeedView.swift
//  Threads
//
//  Created by leonardo Moreira on 08/11/23.
//

import SwiftUI

struct FeeedView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { Therds in
                        
                    ThreadCell()
                        
                    }
                }
                .refreshable {
                    print("Debug: refresh threads")
                }
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeeedView()
    }
   
}
