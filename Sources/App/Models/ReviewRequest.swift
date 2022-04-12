//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

struct ReviewRequest: Content {
    let reviewText: String?
    let userId: Int?
    let productId: Int?
}
