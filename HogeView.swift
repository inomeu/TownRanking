//
//  HogeView.swift
//  TownRanking
//
//  Created by inoue mei on 2022/10/28.
//

import SwiftUI

struct HogeView: View {
    var body: some View {
        TabView {
            Text("Page A")
            Text("Page B")
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

