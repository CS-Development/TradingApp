//
//  TabBarItem.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import SwiftUI

struct TabBarItem: View {
    let tabName: String
    let systemImageName: String
    
    var body: some View {
        VStack {
            Image(systemName: systemImageName)
            Text(tabName)
        }
    }
}
