//
//  CreditCardPayment.swift
//  ECommerce SOLID Principles Example
//
//  Created by David Granger on 5/12/23.
//

import Foundation

class CreditCardPayment: PaymentMethod {
    func processPayment(for amount: Double) -> Bool {
        // process credit card payment and return result
        return true
    }
}
