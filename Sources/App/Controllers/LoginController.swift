//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 10.04.2022.
//

import Foundation
import Vapor

class LoginController {
    func login(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = DefaultResponse(result: 1,
                                       successMessage: "Успешная авторизация!",
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
