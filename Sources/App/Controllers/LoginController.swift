//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 10.04.2022.
//

import Foundation
import Vapor

class LoginController {
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = LoginResponse(
            result: 1,
            user: "Успешная авторизация!"
        )
        return req.eventLoop.future(response)
    }
}
