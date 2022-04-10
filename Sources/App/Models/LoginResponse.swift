//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 10.04.2022.
//

import Foundation
import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: String?
}
