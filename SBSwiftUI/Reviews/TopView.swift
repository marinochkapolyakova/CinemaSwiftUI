//
//  TopView.swift
//  SBSwiftUI
//
//  Created by marinapolyakova on 18.03.2023.
//

import SwiftUI

struct TopView: View {
    
    var user : UserResponse
    
    var body: some View {
        HStack(spacing: 8.0) {
            Image(user.profileImage)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4.0) {
                Text(user.name)
                    .font(.title)
                
                HStack {
                    Text(user.email)
                        .font(.subheadline)
                    Spacer()
                    Text(user.likes)
                        .font(.subheadline)
                        Image("like")
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[1])
    }
}
