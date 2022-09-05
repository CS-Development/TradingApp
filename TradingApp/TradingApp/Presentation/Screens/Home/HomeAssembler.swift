//
//  HomeAssembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import Foundation

protocol HomeAssembler {
    func resolve(_ type: HomeView.Type) -> HomeView
    func resolve(_ type: HomeTabViewProvider.Type) -> HomeTabViewProvider
}

class HomeViewAssembler: HomeAssembler {}
class HomeTabViewProvider: TabViewProvider {}

extension HomeViewAssembler {
    func resolve(_ type: HomeView.Type) -> HomeView {
        let apiClient = KrakenAPI()
        let repository = KrakenRepository(apiClient: apiClient)
        let pairsCase = LoadTradingAssetPairsUseCase(krakenRepository: repository)
        let viewModel = HomeViewModel(pairsCase: pairsCase)
        return HomeView(viewModel: viewModel)
    }
    
    func resolve(_ type: HomeTabViewProvider.Type) -> HomeTabViewProvider {
        return HomeTabViewProvider(tabName: "Home", systemImageName: "house") {
            self.resolve(HomeView.self).erased
        }
    }
}
