//
//  ContentView.swift
//  SwifbookApp
//
//  Created by marinapolyakova on 19.03.2023.
//

import SwiftUI

struct FriendsList : View {
    var body: some View {
        NavigationView {
            List(userResponse) { user in
                Cell(user: user)
            }
            .navigationBarTitle(Text("Friends"))
        }
    }
}

#if DEBUG
struct FriendsList_Previews : PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
#endif
