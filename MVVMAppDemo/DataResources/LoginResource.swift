//
//  LoginResource.swift
//  MVVMAppDemo
//
//  Created by Mamta on 16/07/22.
//  Copyright © 2022 Mahesh Shukla. All rights reserved.
//

import Foundation

struct LoginResource {
    
    func loginUser(loginRequest:LoginRequest, completion: @escaping (_ result: LoginResponse?)-> Void) {
        // Create URL for API
        let loginUrl = URL(string: ApiEndpoints.login)!
        
        // Create httputility object
        let httpUtility = HttpUtility()
        
        do {
            // Create post body
            
            let loginPostBody = try JSONEncoder().encode(loginRequest)
            httpUtility.postApiData(requestUrl: loginUrl, requestBody: loginPostBody, resultType: LoginResponse.self) { (loginApiResponse) in

                _ = completion(loginApiResponse)
            }
            
        } catch let error {
            debugPrint(error)
        }
    }
}
