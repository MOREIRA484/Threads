//
//  PersonView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var ViewModel = ProfileViewModel()
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    private var currentUser: User? {
        return ViewModel.currentUser
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                //bio and stats
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 14) {
                        //fullName and username
                        VStack(alignment: .leading, spacing: 4){
                            
                            Text(currentUser?.fullName ?? "")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text(currentUser?.username ?? "")
                                .font(.subheadline)
                            
                        }
                        if let bio = currentUser?.bio {
                            Text(bio)
                                .font(.subheadline)
                        }
                        
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                    
                }
                
                .padding(.horizontal)
                
                Button {
                    
                }label: {
                    Text("Follow")
                        .frame(width: 350, height: 40)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .background(Color(.black))
                        .cornerRadius(8)
                    
                }
                .padding()
                
                //User content list view
                
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0 ... 10, id: \.self) { thread in
                            
                            ThreadCell()
                            
                        }
                    }
                    .padding(.vertical, 8)
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button {
                            AuthService.shared.signOut()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundStyle(.black)
                        }

                      
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
