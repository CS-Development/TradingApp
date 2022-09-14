//
//  TradeAssembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation

protocol TradeAssembler {
    func resolve(_ type: TradeTabViewProvider.Type) -> TradeTabViewProvider
}

class TradeTabViewProvider: TabViewProvider {}

extension TradeAssembler {
    func resolve(_ type: TradeTabViewProvider.Type) -> TradeTabViewProvider {
        return TradeTabViewProvider(tabName: "Trade",
                             systemImageName: "arrow.triangle.2.circlepath") {
            
            let viewModel = TradeViewModel()
            return TradeView(viewModel: viewModel)
                        .erased
        }
    }
}
