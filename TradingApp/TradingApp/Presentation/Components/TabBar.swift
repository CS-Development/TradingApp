//
//  TabBar.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import SwiftUI

struct TabBar: View {
    let tabProviders: [TabViewProvider]
    
    public init(tabProviders: [TabViewProvider]) {
        self.tabProviders = tabProviders
    }
    
    var body: some View {
        TabView {
            ForEach(tabProviders, id: \.tabName) { tabProvider in
                tabProvider.viewProvider()
                    .tabItem {
                        tabBarItem(tabName: tabProvider.tabName, systemImageName: tabProvider.systemImageName)
                    }
            }
        }
    }
    
    private func tabBarItem(tabName: String, systemImageName: String) -> some View {
        return TabBarItem(tabName: tabName, systemImageName: systemImageName)
    }
}

//struct TabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBar()
//    }
//}
