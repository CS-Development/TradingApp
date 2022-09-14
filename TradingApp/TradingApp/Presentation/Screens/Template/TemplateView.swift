//
//  TemplateView.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import SwiftUI

struct TemplateView: View {
    
    @ObservedObject var viewModel: TemplateViewModel
    @ObservedObject var output: TemplateViewModel.Output
    
    init(viewModel: TemplateViewModel) {
        let input = TemplateViewModel.Input()
        
        self.viewModel = viewModel
        self.output = viewModel.transform(input)
    }
    
    var body: some View {
        Text("Template View")
    }
}

struct TemplateView_Previews: PreviewProvider {
    static var previews: some View {
        TemplateView(viewModel: TemplateViewModel())
    }
}
