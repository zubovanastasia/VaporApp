//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 15.04.2022.
//

import Foundation
import Vapor

struct BasketRequest: Content {
    var productId: Int?
    var quantity: Int?
}
