//
//  TemplateAssembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation

protocol TemplateAssembler {
    func resolve(_ type: TemplateTabViewProvider.Type) -> TemplateTabViewProvider
}

class TemplateTabViewProvider: TabViewProvider {}

extension TemplateAssembler {
    func resolve(_ type: TemplateTabViewProvider.Type) -> TemplateTabViewProvider {
        return TemplateTabViewProvider(tabName: "Template",
                             systemImageName: "magnifyingglass") {
            
            let viewModel = TemplateViewModel()
            return TemplateView(viewModel: viewModel)
                        .erased
        }
    }
}
