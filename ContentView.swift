//
//  ContentView.swift
//  TownRanking
//
//  Created by inoue mei on 2022/10/27.
//

import SwiftUI

enum TabType: Int{
    case rent
    case buy
}

struct ContentView: View {
    @State private var selection: TabType = .rent
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView{
                VStack(spacing: .zero) {
                    UpperTabView(selection: $selection,geometrySize: geometry.size)
                    //Spacer()
                    ContentPageView(selection: $selection)
                }
                .navigationBarTitle("住みたい街ランキング2021(首都圏）",displayMode: .inline)
            }
        }
    }
}
