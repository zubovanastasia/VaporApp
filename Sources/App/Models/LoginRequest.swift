//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 10.04.2022.
//

import Foundation
import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
}
