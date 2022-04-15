//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 15.04.2022.
//

import Foundation
import Vapor

class BasketController {
    func getBasket(_ req: Request) throws -> EventLoopFuture<BasketResponse> {
        guard let body = try? req.content.decode(UserRequest.self) else { throw Abort(.badRequest)
        }
        print(body)
        
        let response = BasketResponse(amount: 209998,
                                    count: 2,
                                    contents: [BasketContents(productId: 123,
                                                            productName: "IPhone X",
                                                            productPrice: 49999,
                                                            quantity: 1),
                                               BasketContents(productId: 345,
                                                            productName: "MacBook Pro M1",
                                                            productPrice: 159999,
                                                            quantity: 1)])
        return req.eventLoop.future(response)
    }
    
    func payBasket(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(UserRequest.self) else { throw Abort(.badRequest)
        }
        print(body)
        
        let response = DefaultResponse(result: 1,
                                       successMessage: "Оплата прошла успешно",
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func addToBasket(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(BasketRequest.self) else { throw Abort(.badRequest)
        }
        print(body)
        
        let response = DefaultResponse(result: 1,
                                       successMessage: "Товар добавлен в корзину",
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func deleteFromBasket(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(BasketRequest.self) else { throw Abort(.badRequest)
        }
        print(body)
        
        let response = DefaultResponse(result: 1,
                                       successMessage: "Товар удален из корзины",
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
