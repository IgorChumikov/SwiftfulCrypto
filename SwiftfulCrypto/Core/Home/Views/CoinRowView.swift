//
//  CoinRowView.swift
//  SwiftfulCrypto
//
//  Created by Игорь Чумиков on 29.08.2025.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
    
    private var leftColumn: some View {
        HStack(spacing: .zero) {
            Text("\(coin.rank)")
                .font(.callout)
                .foregroundStyle(.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundStyle(.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundStyle(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ? Color.there.green : Color.there.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}

#Preview("Light Mode") {
    CoinRowView(
        coin: DeveloperPreview.instance.coin,
        showHoldingsColumn: true
    )
    .environment(\.colorScheme, .light)
}

#Preview("Dark Mode") {
    CoinRowView(
        coin: DeveloperPreview.instance.coin,
        showHoldingsColumn: true
    )
    .background(Color.black)
    .environment(\.colorScheme, .dark)
}
