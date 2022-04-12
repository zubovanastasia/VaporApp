//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

class ChangeUserDataController {
    func changeUserData(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(UserRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = DefaultResponse(result: 1,
                                       successMessage: "Данные успешно изменены",
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
}
