//
//  Product.swift
//  ECommerce SOLID Principles Example
//
//  Created by David Granger on 5/12/23.
//

import Foundation

class Product {
    let id: Int
    let name: String
    let price: Double

    init(id: Int, name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }
}
