//
//  OrderProcessor.swift
//  ECommerce SOLID Principles Example
//
//  Created by David Granger on 5/12/23.
//

import Foundation

class OrderProcessor { //this is a high-level module that coordinates the use of the lower-level paymentmethod module.
    //dependency injection. OrderProcessor depends on paymentMethod to perform its function
    let paymentMethod: PaymentMethod

    init(paymentMethod: PaymentMethod) {
        self.paymentMethod = paymentMethod
    }

    func processOrder(_ cart: ShoppingCart) {
        let totalAmount = cart.getProducts().reduce(0) { $0 + $1.price }
        if paymentMethod.processPayment(for: totalAmount) {
            // process order
        } else {
            // handle payment failure
        }
    }
}
//Open/closed principle: This class does not need to be changed each time a new payment method is added, therefore it adheres to this principle.

//Dependency Inversion Principle (DIP): High-level modules should not depend on low-level modules. Both should depend on abstractions. In the OrderProcessor, it depends on the PaymentMethod abstraction, not on the specific CreditCardPayment or PaypalPayment implementations, conforming to the DIP.
