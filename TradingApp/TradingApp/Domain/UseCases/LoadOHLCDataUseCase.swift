//
//  LoadOHLCDataUseCase.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation
import Combine

public protocol LoadOHLCDataUseCaseType {
    func execute(pairKey: String) -> AnyPublisher<TickDataResult, Error>
}

public class LoadOHLCDataUseCase: LoadOHLCDataUseCaseType {

    let krakenRepository: KrakenRepositoryType
    
    public init(krakenRepository: KrakenRepositoryType) {
        self.krakenRepository = krakenRepository
    }
    
    // execute request
    public func execute(pairKey: String) -> AnyPublisher<TickDataResult, Error> {
        return krakenRepository.getOHLCData(pairKey: pairKey)
    }
    
}
