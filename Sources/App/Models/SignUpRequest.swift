//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 06.04.2022.
//

import Foundation
import Vapor

struct SignupRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
