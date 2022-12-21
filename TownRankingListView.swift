//
//  TownRankingListView.swift
//  TownRanking
//
//  Created by inoue mei on 2022/10/28.
//

import SwiftUI

struct TownRankingListView: View {

    // このViewで変更は起きないので値渡しだけで良い
    let selection: TabType

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem()], spacing: 0.0) {
                ForEach(0 ..< 10) { index in
                    Rectangle()
                        .fill(selection == .rent ? Color.orange: Color.blue)
                        .frame(height: 50)
                        .cornerRadius(8.0)
                        .padding(.bottom, 10.0)
                }
            }
            .padding(.all, 16.0) // sectionInset相当
        }
        .background(Color.gray)
    }
}
