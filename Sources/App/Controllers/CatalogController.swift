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
        let response = [CatalogResponse(productId: 123,
                                       productName: "Товар",
                                       price: 3000,
                                       imageProduct: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnKezD6z4QVH1sDaZL1A7Dkf3hQUJnUneeUQ&usqp=CAU"),
                        CatalogResponse(productId: 312,
                                        productName: "Товар2",
                                        price: 4000,
                                        imageProduct: "https://hr-portal.ru/img/dm/2832.jpg")]
        return req.eventLoop.future(response)
    }
}
