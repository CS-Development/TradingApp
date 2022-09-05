//
//  HomeViewModel.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    public let pairsCase: LoadTradingAssetPairsUseCaseType
    
    // Output
    @Published public var pairs: [String : TradingAssetPair] = [:]
    @Published public var myLyst = [ListItem<String, TradingAssetPair>]()
    
    private var cancelBag = Set<AnyCancellable>()
    
    // MARK: - Init
    init(pairsCase: LoadTradingAssetPairsUseCaseType) {
        self.pairsCase = pairsCase
        
        loadData()
    }
    
    func loadData() {
        pairsCase.execute()
            .map({ pairs in
                pairs.map { key, value in
                    ListItem(keyObject: key, valueObject: value)
                }
            })
            .receive(on: RunLoop.main)
            .sink { completion in
                // TODO
            } receiveValue: { itemsList in
                self.myLyst = itemsList
            }
            .store(in: &cancelBag)
    }
}
