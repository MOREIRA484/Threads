//
//  ExploreView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var Search = ""
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                    LazyVStack {
                        ForEach(0 ... 7 , id: \.self) { Theard in
                            
                            VStack {
                                
                                UserCell()
                                
                                Divider()
                            }
                            
                            .padding(.vertical, 4)
                        
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $Search, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
