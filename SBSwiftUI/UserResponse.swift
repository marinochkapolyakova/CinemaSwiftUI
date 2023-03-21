//
//  UserResponse.swift
//  SwiftUIFirstDemo
//
//  Created by marinapolyakova on 19.03.2023.
//

import Foundation
import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}

