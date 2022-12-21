//
//  ContentPageView.swift
//  TownRanking
//
//  Created by inoue mei on 2022/10/28.
//

import SwiftUI

struct ContentPageView: View {
    @Binding var selection: TabType
    
    var body: some View {
        TabView(selection: $selection){
            //Text("Rent")
            TownRankingListView(selection: selection)
                .tag(TabType.rent)
            //Text("Buy")
            TownRankingListView(selection: selection)
                .tag(TabType.buy)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.linear(duration: 0.3))
        .edgesIgnoringSafeArea(.bottom)
    }
}

