//
//  BalancesAssembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation

protocol BalancesAssembler {
    func resolve(_ type: BalancesTabViewProvider.Type) -> BalancesTabViewProvider
}

class BalancesTabViewProvider: TabViewProvider {}

extension BalancesAssembler {
    func resolve(_ type: BalancesTabViewProvider.Type) -> BalancesTabViewProvider {
        return BalancesTabViewProvider(tabName: "Balances",
                             systemImageName: "building.columns") {
            
            let viewModel = BalancesViewModel()
            return BalancesView(viewModel: viewModel)
                        .erased
        }
    }
}
