//
//  DiceView.swift
//  RollingDice
//
//  Created by Angela on 9/19/25.
//

import SwiftUI

struct DiceView: View {
    @State private var numberofPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName:"die.face.\(numberofPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black)
            Button("Roll"){
                withAnimation{numberofPips=Int.random(in:1...6)}
            }
            .buttonStyle(.bordered)
            .clipShape(Capsule())
        }
    }
}

#Preview {
    DiceView()
}
