//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

struct GoodResponse: Content {
    let result: Int?
    let price: Int?
    let description: String?
}
