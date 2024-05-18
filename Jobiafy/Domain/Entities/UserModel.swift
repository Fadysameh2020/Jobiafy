//
//  UserModel.swift
//  Jobiafy
//
//  Created by MESHO on 18/05/2024.
//

import Foundation

struct UserModel {
    var id: String
    var name: String
    var email: String
    var phoneNumber: String
    var about: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case email
        case phoneNumber = "phone_number"
        case about
    }
    
}
