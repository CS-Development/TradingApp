//
//  ListItem.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import Foundation

struct ListItem<Key: Hashable, ValueObject: Hashable>: Hashable {
    let keyObject: Key
    let valueObject: ValueObject
}
