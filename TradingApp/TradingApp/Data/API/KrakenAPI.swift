//
//  KrakenAPI.swift
//  TradingApp
//
//  Created by Christian Slanzi on 31.08.22.
//

import Foundation
import Combine

protocol KrakenAPIType {
    func getTradableAssetsPairs() -> AnyPublisher<[String: TradingAssetPair], Error>
}

struct KrakenAPI: KrakenAPIType {
    
    let baseURL = "https://api.kraken.com/0/public"
    var cancelBag = Set<AnyCancellable>()
    
    struct DataResponse<T>: Decodable where T: Decodable {
        public let result: [String: T]
        public let error: [String]
    }
    
    func getTradableAssetsPairs() -> AnyPublisher<[String: TradingAssetPair], Error> {
        let url = URL(string: baseURL)!.appendingPathComponent("AssetPairs")
        
        let publisher = URLSession.shared.dataTaskPublisher(for: url)
        return publisher
            .map(\.data)
            .decode(type: DataResponse<TradingAssetPair>.self, decoder: JSONDecoder())
            .map { $0.result }
            .eraseToAnyPublisher()
    }
}

/// IMPROVEMENTS
///
/// separate BaseURL
/// create generic API Request that supports get, put, patch, ....
/// have an API Request Builder for api methods, for authentication, body parameters of different types, support xform - multiform,
/// separate the mapping
/// separate the decoding and inject the decoder
///
/// support DATA LAYER UNIT TESTING
/// have an abstraction for urlsession or dataTaskPublisher


/// YAGNI principle ( You Aren't Gonna Need IT) : do something only when it is required

/// TDD : classic example  BuzzFizz: simple game that prints Buzz when number is multiple of 3, Fizz when is multiple of 5, BuzzFizz when is multiple of both
