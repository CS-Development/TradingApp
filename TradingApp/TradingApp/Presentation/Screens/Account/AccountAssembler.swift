//
//  AccountAssembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation

protocol AccountAssembler {
    func resolve(_ type: AccountTabViewProvider.Type) -> AccountTabViewProvider
}

class AccountTabViewProvider: TabViewProvider {}

extension AccountAssembler {
    func resolve(_ type: AccountTabViewProvider.Type) -> AccountTabViewProvider {
        return AccountTabViewProvider(tabName: "Account",
                             systemImageName: "magnifyingglass") {
            
            let viewModel = AccountViewModel()
            return AccountView(viewModel: viewModel)
                        .erased
        }
    }
}
