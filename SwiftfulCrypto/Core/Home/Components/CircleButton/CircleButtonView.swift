//
//  CircleButtonView.swift
//  SwiftfulCrypto
//
//  Created by Игорь Чумиков on 16.08.2025.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
      Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.there.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.there.background)
            )
            .shadow(
                color: Color.there.accent.opacity(0.25),
                radius: 10, x: 0, y: 0
            )
            .padding()
    }
}

#Preview {
    Group {
        CircleButtonView(iconName: "info")
            .colorScheme(.light)
        CircleButtonView(iconName: "plus")
            .colorScheme(.dark)
    }
}
