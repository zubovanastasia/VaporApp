//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

class ReviewsController {
    func getReviews(_ req: Request) throws -> EventLoopFuture<[ReviewResponse]> {
        guard let body = try? req.content.decode(GoodRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = [ReviewResponse(userId: 123, reviewText: "Отличное качество!"),
                        ReviewResponse(userId: 234, reviewText: "Доволен покупкой")]
        return req.eventLoop.future(response)
    }
    func addReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(ReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = DefaultResponse(result: 1,
                                       successMessage: "Отзыв получен",
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
    func removeReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(ReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = DefaultResponse(result: 1,
                                       successMessage: nil,
                                       errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
