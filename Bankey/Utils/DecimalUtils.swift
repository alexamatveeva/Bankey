//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Alexandra on 24.08.2022.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
