//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

struct CatalogResponse: Content {
    let productId: Int?
    let productName: String?
    let price: Int?
    let imageProduct: String?
}
