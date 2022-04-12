//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 06.04.2022.
//

import Foundation
import Vapor

class SignupController {
    func signup(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(UserRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = DefaultResponse(result: 1,
                                       successMessage: "Регистрация прошла успешно!",
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
