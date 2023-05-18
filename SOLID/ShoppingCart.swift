//
//  ShoppingCart.swift
//  ECommerce SOLID Principles Example
//
//  Created by David Granger on 5/12/23.
//

import Foundation

class ShoppingCart {
    private var products: [Product] = []

    func addProduct(_ product: Product) {
        products.append(product)
    }

    func removeProduct(_ product: Product) {
        products = products.filter { $0.id != product.id }
    }

    func getProducts() -> [Product] {
        return products
    }
}
