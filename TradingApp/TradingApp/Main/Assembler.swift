//
//  Assembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import Foundation

protocol Assembler: AnyObject,
    HomeAssembler,
    TradeAssembler,
    BalancesAssembler,
    AccountAssembler {
    
}

final class DefaultAssembler: Assembler {

}
