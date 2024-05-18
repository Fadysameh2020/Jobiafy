//
//  APIRouter.swift
//  Jobiafy
//
//  Created by MESHO on 18/05/2024.
//

import Foundation
import Alamofire

protocol AuthenticationGateway {
    func login(
        parameters: LoginParameters,
        completionHandler: @escaping (_ user: Result<UserModel, Error>) -> Void
    )
}
