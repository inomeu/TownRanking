//
//  UpperTabView.swift
//  TownRanking
//
//  Created by inoue mei on 2022/10/28.
//

import SwiftUI

struct UpperTabView: View {
    @Binding var selection: TabType
    let geometrySize: CGSize
    
    var body: some View {
        VStack(alignment: .leading,spacing: .zero){
            HStack(spacing: .zero){
                Button(action: {
                    withAnimation(.linear(duration: 0.3)) {
                        self.selection = .rent
                    }
                }, label: {
                    Text("「借りて住みたい」")
                        .foregroundColor(self.selection == .rent ? .orange: .gray)
                        .font(.headline)
                })
                .frame(width: geometrySize.width / 2, height: 44.0)
                Button(action: {
                    withAnimation(.linear(duration: 0.3)) {
                        self.selection = .buy
                    }
                    }, label: {Text("「買って住みたい」").foregroundColor(self.selection == .rent ?
                    .gray: .blue)
                        .font(.headline)
                })
                .frame(width: geometrySize.width/2,height: 44.0)
            }
            Rectangle()
                .fill(self.selection == .rent ? Color.orange: Color.blue)
                .frame(width: geometrySize.width/2,height: 2.0)
                .offset(x: self.selection == .rent ? .zero: geometrySize.width/2,y: .zero)
                .animation(.linear(duration: 0.3))
        }
    }
}

