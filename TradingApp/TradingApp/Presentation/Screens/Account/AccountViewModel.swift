//
//  AccountViewModel.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation
import Combine

final class AccountViewModel: ObservableObject {

    private var cancelBag = Set<AnyCancellable>()
    
    // Input
    struct Input {
    }
    
    // Output
    final class Output: ObservableObject {
    }
    
    // MARK: - Init
    
//    init(useCase: UseCaseType) {
//        self.useCase = useCase
//    }
    
    func transform(_ input: Input) -> Output {
        
        let output = Output()

        // TODO: - map input and use cases to output

        return output
    }
}
