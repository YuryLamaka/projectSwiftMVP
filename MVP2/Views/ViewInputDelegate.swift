//
//  ViewInputDelegate.swift
//  MVP2
//
//  Created by Yury Lamaka on 25.01.22.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    //функции при взаимодействии с пользовательским интерфейсом
    func setupInitialState()
    func setupData(testData: ([CryptoData]))
    func displayData(index: Int)
}
