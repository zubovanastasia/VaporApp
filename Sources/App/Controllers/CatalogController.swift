//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

class CatalogController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<CatalogResponse> {
        guard let body = try? req.content.decode(CatalogRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = CatalogResponse(productId: 123, productName: "Товар", price: 3000)
        return req.eventLoop.future(response)
    }
}
