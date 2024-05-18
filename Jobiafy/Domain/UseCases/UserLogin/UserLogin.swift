//
//  UserLogin.swift
//  Jobiafy
//
//  Created by MESHO on 18/05/2024.
//

import Foundation

protocol UserLoginUseCase {
    func login(
        parameters: LoginParameters,
        completionHandler: @escaping (_ user: Result<UserModel, Error>) -> Void
    )
}

class UserLoginUserCaseImplementation: UserLoginUseCase {
    private let authenticationGateway: AuthenticationGateway
    
    init(authenticationGateway: AuthenticationGateway) {
        self.authenticationGateway = authenticationGateway
    }
    
    func login(parameters: LoginParameters, completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        
        guard parameters.email.isValidEmail() else {
            completionHandler(.failure(UserLoginError.notValidEmail))
            return
        }
        
        guard parameters.password.count >= 8 else {
            completionHandler(.failure(UserLoginError.notValidPassword))
            return
        }
        
        authenticationGateway.login(parameters: parameters, completionHandler: completionHandler)
        
    }
    
}
