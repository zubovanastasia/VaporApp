//
//  File.swift
//  
//
//  Created by Anastasiia Zubova on 12.04.2022.
//

import Foundation
import Vapor

struct CatalogRequest: Content {
    let pageNumber: Int
    let categoryId: Int
}
