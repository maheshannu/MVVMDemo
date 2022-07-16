//
//  LoginRequest.swift
//  MVVMAppDemo
//
//  Created by Mamta on 16/07/22.
//  Copyright © 2022 Mahesh Shukla. All rights reserved.
//

import Foundation

struct LoginRequest: Encodable {
    var userEmail: String?
    var userPassword: String?
}
