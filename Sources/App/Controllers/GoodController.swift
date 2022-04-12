//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

class GoodController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<GoodResponse> {
        guard let body = try? req.content.decode(GoodRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = GoodResponse(result: 1,
                                    price: 5000,
                                    description: "Made in China")
        return req.eventLoop.future(response)
    }
}
