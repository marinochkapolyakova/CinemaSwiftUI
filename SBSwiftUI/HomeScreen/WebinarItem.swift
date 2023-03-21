//
//  WebinarItem.swift
//  SBSwiftUI
//
//  Created by marinapolyakova on 18.03.2023.
//
import SwiftUI

struct WebinarItem : View {
    
    var object: ProductsResponse
    
    var body: some View {
            FeaturedLandmarks(object: object)
                
        .listRowInsets(EdgeInsets())
        
    }
}


struct FeaturedLandmarks: View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(object.image)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(10)
                .frame(width: 170, height: 190)
        }.padding(.leading, 15)
    }
}

#if DEBUG
struct WebinarItem_Previews : PreviewProvider {
    static var previews: some View {
        WebinarItem(object: materialResponse[4])
    }
}
#endif
