//
//  Constants.swift
//  AuthWithAspNetCore
//
//  Created by Rafael Adolfo on 29/01/19.
//  Copyright © 2019 Rafael Adolfo. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//we need to add a new item in info.plist in order to http work: App Transport Security Settings > Allow Arbitrary Loads : Yes
let BASE_URL = "http://localhost:5000/api/"

let URL_LOGIN = "\(BASE_URL)users/authenticate"

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [
    "Authorization":"Bearer \(AuthenticationService.instance.token)",
    "Content-Type": "application/json; charset=utf-8"
]
