//
//  LoadTickerUseCase.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation
import Combine

public protocol LoadTickerUseCaseType {
    func execute(pairKey: String) -> AnyPublisher<[String : Ticker], Error>
}

public class LoadTickerUseCase: LoadTickerUseCaseType {

    let krakenRepository: KrakenRepositoryType
    
    public init(krakenRepository: KrakenRepositoryType) {
        self.krakenRepository = krakenRepository
    }
    
    // execute request
    public func execute(pairKey: String) -> AnyPublisher<[String : Ticker], Error> {
        return krakenRepository.getTickerInformation(pairKey: pairKey)
    }
    
}
