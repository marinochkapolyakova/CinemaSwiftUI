//
//  ProductsResponse.swift
//  SBSwiftUI
//
//  Created by marinapolyakova on 21.03.2023.
//

import Foundation
import UIKit
import SwiftUI

enum Category: String, CaseIterable, Codable, Hashable {
    case movie = "Movies"
    case series = "Series"
}

struct ProductsResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var shortName: String
    var category: Category
    var description: String
    var rating: Double
    var marks: Int
   
}
