//
//  Data.swift
//  SBSwiftUI
//
//  Created by marinapolyakova on 18.03.2023.
//

import Foundation

import UIKit
import SwiftUI

let movies = UserResponse(id: 1001, name: "Online cinema", profileImage: "1", email: "onlinecinema@film", likes: "54.4K", text: "Фильмы и сериалы онлайн")

let materialResponse: [ProductsResponse] = load("coursesModelData.json")
let userResponse: [UserResponse] = load("userModelData.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
