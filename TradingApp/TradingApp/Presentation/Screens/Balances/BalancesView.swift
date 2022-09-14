//
//  BalancesView.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import SwiftUI

struct BalancesView: View {
    
    @ObservedObject var viewModel: BalancesViewModel
    @ObservedObject var output: BalancesViewModel.Output
    
    init(viewModel: BalancesViewModel) {
        let input = BalancesViewModel.Input()
        
        self.viewModel = viewModel
        self.output = viewModel.transform(input)
    }
    
    var body: some View {
        Text("Balances View")
    }
}

struct BalancesView_Previews: PreviewProvider {
    static var previews: some View {
        BalancesView(viewModel: BalancesViewModel())
    }
}
