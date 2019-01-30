//
//  AuthenticationService.swift
//  AuthWithAspNetCore
//
//  Created by Rafael Adolfo on 29/01/19.
//  Copyright © 2019 Rafael Adolfo. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class AuthenticationService {

    static let instance = AuthenticationService()

    //values that we will use
    var firstName: String!
    var token: String!

    //try to login using user credentials
    func login(login: String, password: String, completion: @escaping CompletionHandler) {

        let requestBody: [String: Any] = [
            "login": login.lowercased(),
            "password": password
        ]
        
        Alamofire.request(URL_LOGIN, method: .post, parameters: requestBody, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in

            switch response.result {
            case .failure:
                completion(false)
                debugPrint(response.result.error as Any)
            case .success:
                if response.response?.statusCode != 200 { completion(false); return }
                guard let data = response.data else { return }
                do {
                    let json = try JSON(data: data)
                    self.firstName = json["firstName"].stringValue
                    self.token = json["token"].stringValue

                    completion(true)
                } catch  {
                    completion(false)
                    debugPrint(error)
                }
            }
        }
    }
}


