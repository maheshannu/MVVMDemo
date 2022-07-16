//
//  LoginResponse.swift
//  MVVMAppDemo
//
//  Created by Mamta on 16/07/22.
//  Copyright © 2022 Mahesh Shukla. All rights reserved.
//

import Foundation

struct LoginResponse: Decodable {
    var errorMessage: String?
    var data: LoginResponseData?
}

struct LoginResponseData: Decodable {
    var userName: String
    var userId: Int
    var userEmail: String
    
    enum CodingKeys: String, CodingKey {
        case userName
        case userId = "userId"
        case userEmail
    }
}
