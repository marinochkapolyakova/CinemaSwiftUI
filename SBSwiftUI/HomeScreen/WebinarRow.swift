//
//  WebinarRow.swift
//  SBSwiftUI
//
//  Created by marinapolyakova on 18.03.2023.
//

import SwiftUI

struct WebinarRow : View {
    
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.items, id: \.name) { object in
                        NavigationLink(destination: DetailScreen(object: object)) {
                            WebinarItem(object: object)
                        }
                    }
                }
            }
            .frame(height: 210)
        }
    }
}

#if DEBUG
struct WebinarRow_Previews : PreviewProvider {
    static var previews: some View {
        WebinarRow(categoryName: "Webinars", items: Array(materialResponse.dropFirst(4)))
    }
}
#endif
