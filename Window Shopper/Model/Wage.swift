//
//  Wage.swift
//  Window Shopper
//
//  Created by Soubhik Sarkhel on 29/11/23.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, ofPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
