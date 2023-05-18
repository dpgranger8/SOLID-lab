//
//  PaymentMethod.swift
//  ECommerce SOLID Principles Example
//
//  Created by David Granger on 5/12/23.
//

import Foundation

protocol PaymentMethod {
    func processPayment(for amount: Double) -> Bool
}
