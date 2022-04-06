//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 06.04.2022.
//

import Foundation
import Vapor

class AuthController {
    func signUp(_ req: Request) throws -> EventLoopFuture<SignUpResponse> {
        guard let body = try? req.content.decode(SignUpRequest.self) else {
            throw Abort(.badRequest)
}
print(body)
        let response = SignUpResponse(
            result: 1,
user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
}
