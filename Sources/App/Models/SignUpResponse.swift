//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 06.04.2022.
//

import Foundation
import Vapor

struct SignUpResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
