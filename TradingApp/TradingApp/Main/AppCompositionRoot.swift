//
//  AppCompositionRoot.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import Foundation
import SwiftUI

final class AppCompositionRoot {
    
    static let assembler = DefaultAssembler()
    
    public static var start: some View {
        return TabBar(tabProviders: [
            assembler.resolve(HomeTabViewProvider.self),
            assembler.resolve(TradeTabViewProvider.self),
            assembler.resolve(BalancesTabViewProvider.self),
            assembler.resolve(AccountTabViewProvider.self)
        ])
    }
}
