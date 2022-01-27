//
//  CryptoData.swift
//  MVP2
//
//  Created by Yury Lamaka on 25.01.22.
//

import Foundation

struct CryptoData {
    var name: String
    var ticker: String
    var value: Int
}

extension CryptoData {
    static var testData = [CryptoData(name: "Bitcoin", ticker: "BTC", value: 55000),
    CryptoData(name: "Etherium", ticker: "ETH", value: 35000)
    ]
}
