//
//  ContentView.swift
//  SBSwiftUI
//
//  Created by marinapolyakova on 18.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String : [ProductsResponse]]{
        .init(
            grouping: materialResponse,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            List{
                Cell(user: movies).listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted(), id: \.self){
                    key in
                    if key == "Movies" {
                        CategoryRow(categoryName: key, items: self.categories[key]!)
                    } else if key == "Series" {
                        WebinarRow(categoryName: key, items: self.categories[key]!)
                    }
                }  .listRowInsets(EdgeInsets())
                    
                    NavigationLink(destination: FriendsList()) {
                        Text("Reviews")
                            .font(.headline)
                    }
                .navigationBarTitle(Text("Homepage"))
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
