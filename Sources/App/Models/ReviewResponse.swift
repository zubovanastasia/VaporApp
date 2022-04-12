//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

struct ReviewResponse: Content {
    let userId: Int?
    let reviewText: String?
}
