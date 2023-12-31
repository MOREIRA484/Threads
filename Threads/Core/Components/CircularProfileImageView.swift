//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by leonardo Moreira on 08/11/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        
        Image("max")
        .resizable()
        .frame(width: 40, height: 40)
        .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
