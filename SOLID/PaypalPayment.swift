//
//  PaypalPayment.swift
//  ECommerce SOLID Principles Example
//
//  Created by David Granger on 5/12/23.
//

import Foundation

class PaypalPayment: PaymentMethod {
    func processPayment(for amount: Double) -> Bool {
        return true
    }
}

//Liskov Substitution Principle: PaypalPayment is substitutable for PaymentMethod. No matter which specific payment is used, the orderprocessor can still handle the order as expected
