//
//  KrakenRepository.swift
//  TradingApp
//
//  Created by Christian Slanzi on 31.08.22.
//

import Foundation
import Combine

public protocol KrakenRepositoryType { // a.k.a. gateway
    func getTradableAssetsPairs(decoder: JSONDecoder) -> AnyPublisher<[String: TradingAssetPair], Error>
}

public struct KrakenRepository: KrakenRepositoryType {
    let apiClient: KrakenAPIType
    
    public func getTradableAssetsPairs(decoder: JSONDecoder) -> AnyPublisher<[String : TradingAssetPair], Error> {
        return apiClient.getTradableAssetsPairs(decoder: decoder)
    }
}

/// REPOSITORY PATTERN
///
/// 1: common interface to access to different sources
/// 2: compose multiple sources with the same interface
