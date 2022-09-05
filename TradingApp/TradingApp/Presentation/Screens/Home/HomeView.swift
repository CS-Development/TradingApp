//
//  HomeView.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        List(viewModel.myLyst, id: \.self) { listItem in
            let pair: TradingAssetPair = listItem.valueObject
            Text(pair.altname)
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView(viewModel: HomeViewModel())
//    }
//}
