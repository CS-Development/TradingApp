//
//  TradeView.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import SwiftUI

struct TradeView: View {
    
    @ObservedObject var viewModel: TradeViewModel
    @ObservedObject var output: TradeViewModel.Output
    
    init(viewModel: TradeViewModel) {
        let input = TradeViewModel.Input()
        
        self.viewModel = viewModel
        self.output = viewModel.transform(input)
    }
    
    var body: some View {
        Text("Trade View")
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView(viewModel: TradeViewModel())
    }
}
