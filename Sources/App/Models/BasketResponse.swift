//
//  File 2.swift
//  
//
//  Created by Anastasiia Zubova on 15.04.2022.
//

import Foundation
import Vapor

struct BasketResponse: Content {
    var amount: Int?
    var count: Int?
    var contents: [BasketContents]
}

struct BasketContents: Content {
    var productId: Int?
    var productName: String?
    var productPrice: Int?
    var quantity: Int?
}
