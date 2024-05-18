//
//  UserLoginError.swift
//  Jobiafy
//
//  Created by MESHO on 18/05/2024.
//

import Foundation

enum UserLoginError: Error {
    case notValidEmail
    case notValidPassword
}

extension UserLoginError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notValidEmail:
            return "Please, enter valid Email address"
        case .notValidPassword:
            return "Password must be at least 8 characters long."
        }
    }
}
